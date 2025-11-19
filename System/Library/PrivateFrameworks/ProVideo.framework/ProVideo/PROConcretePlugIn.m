@interface PROConcretePlugIn
- (BOOL)isEqual:(id)a3;
- (Class)plugInClass;
- (PROConcretePlugIn)initWithDictionary:(id)a3 bundle:(id)a4 delegate:(id)a5 pluginKitPlug:(id)a6;
- (id)description;
- (id)displayName;
- (id)helpURL;
- (id)infoString;
- (id)plugInInstance;
- (id)sharedPlugInInstance;
- (id)vendorName;
- (id)version;
- (void)dealloc;
@end

@implementation PROConcretePlugIn

- (PROConcretePlugIn)initWithDictionary:(id)a3 bundle:(id)a4 delegate:(id)a5 pluginKitPlug:(id)a6
{
  v42.receiver = self;
  v42.super_class = PROConcretePlugIn;
  v10 = [(PROConcretePlugIn *)&v42 init];
  if (!v10)
  {
    return v10;
  }

  v10->infoDictionary = [a3 copy];
  v10->bundle = a4;
  v10->delegate = a5;
  v10->pluginKitPlug = a6;
  v10->entirelyOutOfProcess = [(NSBundle *)v10->bundle objectForInfoDictionaryKey:@"PlugInKit"]!= 0;
  v10->_isBlocked = 0;
  v11 = [(NSDictionary *)v10->infoDictionary objectForKey:@"uuid"];
  v12 = *MEMORY[0x277CBECE8];
  if (!v11)
  {
    v10->uuidRef = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    delegate = v10->delegate;
    v38 = objc_opt_class();
    v36 = MalformedKeyError(v10, @"uuid", v38, v10->infoDictionary);
    v35 = delegate;
    goto LABEL_26;
  }

  v10->uuidRef = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], v11);
  v41 = 0;
  v13 = objc_opt_class();
  if (!RequiredKeyIsPresent(v10, @"uuid", v13, a3, &v41) || (v14 = objc_opt_class(), !RequiredKeyIsPresent(v10, @"displayName", v14, a3, &v41)) || (v15 = objc_opt_class(), !RequiredKeyIsPresent(v10, @"className", v15, a3, &v41)) || (v16 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"group", v16, a3, &v41)) || (v17 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"protocolNames", v17, a3, &v41)) || (v18 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"infoString", v18, a3, &v41)) || (v19 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"iconFileName", v19, a3, &v41)) || (v20 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"helpURL", v20, a3, &v41)) || (v21 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"vendorName", v21, a3, &v41)) || (v22 = objc_opt_class(), (OptionalKeyIsWellFormed(v10, @"version", v22, a3, &v41) & 1) == 0) && (v23 = objc_opt_class(), !OptionalKeyIsWellFormed(v10, @"version", v23, a3, &v41)) || (v24 = objc_opt_class(), (OptionalKeyIsWellFormed(v10, @"stringsFileName", v24, a3, &v41) & 1) == 0))
  {
    v35 = v10->delegate;
    v36 = v41;
    goto LABEL_26;
  }

  v25 = [a3 objectForKey:@"group"];
  if (v25)
  {
    v26 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = CFUUIDCreateFromString(v12, v26);
      if (v27)
      {
        v28 = v27;
        v29 = [(PROPlugInDelegate *)v10->delegate plugInGroupWithUUID:v27];
        v10->group = v29;
        [(PROPlugInGroup *)v29 addPlugIn:v10];
        CFRelease(v28);
        goto LABEL_19;
      }
    }

    v32 = v10->delegate;
    v33 = objc_opt_class();
    v34 = @"group";
LABEL_29:
    v36 = MalformedKeyError(v10, v34, v33, a3);
    v35 = v32;
LABEL_26:
    [(PROPlugInDelegate *)v35 plugInCouldNotInitialize:v36];
    v39 = v10;
    return 0;
  }

LABEL_19:
  v30 = [a3 objectForKey:@"protocolNames"];
  if (v30)
  {
    v31 = [v30 objectEnumerator];
    while ([v31 nextObject])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = v10->delegate;
        v33 = objc_opt_class();
        v34 = @"protocolNames";
        goto LABEL_29;
      }
    }
  }

  v10->localizationTableName = [-[NSDictionary objectForKey:](v10->infoDictionary objectForKey:{@"stringsFileName", "copy"}];
  return v10;
}

- (void)dealloc
{
  uuidRef = self->uuidRef;
  if (uuidRef)
  {
    CFRelease(uuidRef);
  }

  v4.receiver = self;
  v4.super_class = PROConcretePlugIn;
  [(PROConcretePlugIn *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    return [(PROConcretePlugIn *)self isEqualToPlugIn:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PROConcretePlugIn;
    return [(PROConcretePlugIn *)&v6 isEqual:a3];
  }
}

- (id)sharedPlugInInstance
{
  result = self->sharedInstance;
  if (!result)
  {
    result = [(PROConcretePlugIn *)self plugInInstance];
    self->sharedInstance = result;
  }

  return result;
}

- (Class)plugInClass
{
  plugInFlags = self->plugInFlags;
  if ((plugInFlags & 1) == 0)
  {
    if (![(PROPlugInDelegate *)self->delegate plugInShouldLoadPlugInInstanceForTheFirstTime:self])
    {
      return 0;
    }

    plugInFlags = self->plugInFlags;
  }

  *&self->plugInFlags = plugInFlags | 1;
  v4 = [(PROConcretePlugIn *)self className];
  v11 = 0;
  if ([(NSBundle *)self->bundle loadAndReturnError:&v11])
  {
    result = NSClassFromString(v4);
    if (result)
    {
      return result;
    }

    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"PROPlugIn", v4, @"ClassName", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In failed to find the plug-in's class.", &stru_2872E16E0, @"PROPlug", *MEMORY[0x277CCA450], 0}];
    v7 = MEMORY[0x277CCA9B8];
    v8 = -601;
  }

  else
  {
    v9 = MEMORY[0x277CBEAC0];
    v10 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In failed to load bundle.", &stru_2872E16E0, @"PROPlug"}];
    v6 = [v9 dictionaryWithObjectsAndKeys:{self, @"PROPlugIn", v10, *MEMORY[0x277CCA450], v11, *MEMORY[0x277CCA7E8], 0}];
    v7 = MEMORY[0x277CCA9B8];
    v8 = -600;
  }

  -[PROConcretePlugIn reportError:](self, "reportError:", [v7 errorWithDomain:@"PROPlug" code:v8 userInfo:v6]);
  return 0;
}

- (id)plugInInstance
{
  plugInFlags = self->plugInFlags;
  if ((plugInFlags & 1) == 0)
  {
    if (![(PROPlugInDelegate *)self->delegate plugInShouldLoadPlugInInstanceForTheFirstTime:self])
    {
      return 0;
    }

    plugInFlags = self->plugInFlags;
  }

  *&self->plugInFlags = plugInFlags | 1;
  result = [(PROConcretePlugIn *)self plugInClass];
  if (result)
  {
    v5 = result;
    v6 = [result instancesRespondToSelector:sel_initWithAPIManager_] ? objc_msgSend([v5 alloc], "initWithAPIManager:", -[PROPlugInDelegate apiManagerForPlugInInstances](self->delegate, "apiManagerForPlugInInstances")) : objc_alloc_init(v5);
    result = v6;
    if (!result)
    {
      v7 = MEMORY[0x277CBEAC0];
      v8 = [(NSDictionary *)self->infoDictionary objectForKey:@"className"];
      -[PROConcretePlugIn reportError:](self, "reportError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-602 userInfo:{objc_msgSend(v7, "dictionaryWithObjectsAndKeys:", self, @"PROPlugIn", v8, @"ClassName", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In failed create instance of its class.", &stru_2872E16E0, @"PROPlug", *MEMORY[0x277CCA450], 0)}]);
      return 0;
    }
  }

  return result;
}

- (id)displayName
{
  entirelyOutOfProcess = self->entirelyOutOfProcess;
  bundle = self->bundle;
  v5 = [(NSDictionary *)self->infoDictionary objectForKey:@"displayName"];
  if (entirelyOutOfProcess)
  {
    localizationTableName = @"InfoPlist";
  }

  else
  {
    localizationTableName = self->localizationTableName;
  }

  return [(NSBundle *)bundle localizedStringForKey:v5 value:0 table:localizationTableName];
}

- (id)helpURL
{
  result = self->helpURL;
  if (!result)
  {
    if ((*&self->plugInFlags & 4) != 0)
    {
      return 0;
    }

    *&self->plugInFlags |= 4u;
    v4 = [(NSDictionary *)self->infoDictionary objectForKey:@"helpURL"];
    if (!v4)
    {
      v5 = [(PROConcretePlugIn *)self displayName];
      goto LABEL_10;
    }

    v5 = v4;
    if ([v4 rangeOfString:@"://"] == 0x7FFFFFFFFFFFFFFFLL || (result = objc_msgSend(objc_msgSend(MEMORY[0x277CBEBC0], "allocWithZone:", -[PROConcretePlugIn zone](self, "zone")), "initWithString:", v5), (self->helpURL = result) == 0))
    {
      v6 = [v5 pathExtension];
      if ([(__CFString *)v6 length])
      {
        v5 = [v5 stringByDeletingPathExtension];
        goto LABEL_11;
      }

LABEL_10:
      v6 = @"html";
LABEL_11:
      v7 = [(NSBundle *)self->bundle pathForResource:v5 ofType:v6];
      if (v7)
      {
        result = [objc_msgSend(MEMORY[0x277CBEBC0] allocWithZone:{-[PROConcretePlugIn zone](self, "zone")), "initFileURLWithPath:", v7}];
        self->helpURL = result;
      }

      else
      {
        return self->helpURL;
      }
    }
  }

  return result;
}

- (id)version
{
  bundle = self->bundle;
  v4 = [(NSDictionary *)self->infoDictionary objectForKey:@"version"];
  localizationTableName = self->localizationTableName;

  return [(NSBundle *)bundle localizedStringForKey:v4 value:0 table:localizationTableName];
}

- (id)infoString
{
  bundle = self->bundle;
  v4 = [(NSDictionary *)self->infoDictionary objectForKey:@"infoString"];
  localizationTableName = self->localizationTableName;

  return [(NSBundle *)bundle localizedStringForKey:v4 value:0 table:localizationTableName];
}

- (id)vendorName
{
  bundle = self->bundle;
  v4 = [(NSDictionary *)self->infoDictionary objectForKey:@"vendorName"];
  localizationTableName = self->localizationTableName;

  return [(NSBundle *)bundle localizedStringForKey:v4 value:0 table:localizationTableName];
}

- (id)description
{
  result = [(PROConcretePlugIn *)self displayName];
  if (!result)
  {
    v3 = objc_opt_class();

    return NSStringFromClass(v3);
  }

  return result;
}

@end