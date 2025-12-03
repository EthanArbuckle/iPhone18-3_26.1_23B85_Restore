@interface UISDisplayContext
+ (id)defaultContext;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISDisplayContext)initWithDisplayConfiguration:(id)configuration displayEdgeInfo:(id)info exclusionArea:(id)area;
- (UISDisplayContext)initWithXPCDictionary:(id)dictionary;
- (id)_initWithDisplayContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISDisplayContext

+ (id)defaultContext
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = _MergedGlobals_16;
  v13 = _MergedGlobals_16;
  if (!_MergedGlobals_16)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCADisplayClass_block_invoke;
    v9[3] = &unk_1E7459080;
    v9[4] = &v10;
    __getCADisplayClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  mainDisplay = [v3 mainDisplay];
  if (mainDisplay)
  {
    v6 = [objc_alloc(MEMORY[0x1E699FAC0]) initWithCADisplay:mainDisplay];
    if (v6)
    {
      v7 = [[self alloc] initWithDisplayConfiguration:v6];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (UISDisplayContext)initWithDisplayConfiguration:(id)configuration displayEdgeInfo:(id)info exclusionArea:(id)area
{
  configurationCopy = configuration;
  infoCopy = info;
  areaCopy = area;
  v19.receiver = self;
  v19.super_class = UISDisplayContext;
  v11 = [(UISDisplayContext *)&v19 init];
  if (v11)
  {
    v12 = [configurationCopy copy];
    displayConfiguration = v11->_displayConfiguration;
    v11->_displayConfiguration = v12;

    v14 = [infoCopy copy];
    displayEdgeInfo = v11->_displayEdgeInfo;
    v11->_displayEdgeInfo = v14;

    v11->_artworkSubtype = 0;
    v11->_userInterfaceStyle = 0;
    v16 = [areaCopy copy];
    exclusionArea = v11->_exclusionArea;
    v11->_exclusionArea = v16;
  }

  return v11;
}

- (id)_initWithDisplayContext:(id)context
{
  contextCopy = context;
  displayConfiguration = [contextCopy displayConfiguration];
  displayEdgeInfo = [contextCopy displayEdgeInfo];
  exclusionArea = [contextCopy exclusionArea];
  v8 = [(UISDisplayContext *)self initWithDisplayConfiguration:displayConfiguration displayEdgeInfo:displayEdgeInfo exclusionArea:exclusionArea];

  if (v8)
  {
    v8->_artworkSubtype = [contextCopy artworkSubtype];
    v8->_userInterfaceStyle = [contextCopy userInterfaceStyle];
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_uint64(xdict, "ArtworkSubtype", self->_artworkSubtype);
  xpc_dictionary_set_uint64(xdict, "UserInterfaceStyle", self->_userInterfaceStyle);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (UISDisplayContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = UISDisplayContext;
  v5 = [(UISDisplayContext *)&v13 init];
  if (v5)
  {
    v6 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    displayConfiguration = v5->_displayConfiguration;
    v5->_displayConfiguration = v6;

    v8 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    displayEdgeInfo = v5->_displayEdgeInfo;
    v5->_displayEdgeInfo = v8;

    v5->_artworkSubtype = xpc_dictionary_get_uint64(dictionaryCopy, "ArtworkSubtype");
    v5->_userInterfaceStyle = xpc_dictionary_get_uint64(dictionaryCopy, "UserInterfaceStyle");
    v10 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    exclusionArea = v5->_exclusionArea;
    v5->_exclusionArea = v10;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UISMutableDisplayContext alloc];

  return [(UISDisplayContext *)v4 _initWithDisplayContext:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_10;
  }

  if (equalCopy == self)
  {
    v17 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    displayConfiguration = [(UISDisplayContext *)self displayConfiguration];
    displayConfiguration2 = [(UISDisplayContext *)v6 displayConfiguration];
    if ([displayConfiguration isEqual:displayConfiguration2])
    {
      displayEdgeInfo = [(UISDisplayContext *)self displayEdgeInfo];
      displayEdgeInfo2 = [(UISDisplayContext *)v6 displayEdgeInfo];
      if ([displayEdgeInfo isEqual:displayEdgeInfo2] && (v11 = -[UISDisplayContext artworkSubtype](self, "artworkSubtype"), v11 == -[UISDisplayContext artworkSubtype](v6, "artworkSubtype")) && (v12 = -[UISDisplayContext userInterfaceStyle](self, "userInterfaceStyle"), v12 == -[UISDisplayContext userInterfaceStyle](v6, "userInterfaceStyle")))
      {
        exclusionArea = [(UISDisplayContext *)self exclusionArea];
        exclusionArea2 = [(UISDisplayContext *)v6 exclusionArea];
        if (exclusionArea == exclusionArea2)
        {
          v17 = 1;
        }

        else
        {
          exclusionArea3 = [(UISDisplayContext *)self exclusionArea];
          [(UISDisplayContext *)v6 exclusionArea];
          v16 = v19 = exclusionArea;
          v17 = [exclusionArea3 isEqual:v16];

          exclusionArea = v19;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (unint64_t)hash
{
  displayConfiguration = [(UISDisplayContext *)self displayConfiguration];
  v4 = [displayConfiguration hash];
  displayEdgeInfo = [(UISDisplayContext *)self displayEdgeInfo];
  v6 = [displayEdgeInfo hash] ^ v4;
  artworkSubtype = [(UISDisplayContext *)self artworkSubtype];
  v8 = artworkSubtype ^ [(UISDisplayContext *)self userInterfaceStyle];
  exclusionArea = [(UISDisplayContext *)self exclusionArea];
  v10 = v8 ^ [exclusionArea hash];

  return v6 ^ v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayConfiguration withName:@"DisplayConfiguration"];
  v5 = [v3 appendObject:self->_displayEdgeInfo withName:@"DisplayEdgeInfo"];
  v6 = [v3 appendUnsignedInteger:self->_artworkSubtype withName:@"ArtworkSubtype"];
  v7 = [v3 appendUnsignedInteger:self->_userInterfaceStyle withName:@"UserInterfaceStyle"];
  v8 = [v3 appendObject:self->_exclusionArea withName:@"ExclusionArea"];
  build = [v3 build];

  return build;
}

@end