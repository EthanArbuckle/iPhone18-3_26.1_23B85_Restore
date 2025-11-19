@interface UISceneOpenURLOptions
+ (id)_optionsFromPayload:(id)a3 sourceProcessHandle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithSourceApplication:(id)a3 processHandle:(id)a4 annotation:(id)a5 openInPlace:(BOOL)a6 eventAttribution:(id)a7 openAsDownload:(BOOL)a8 contentOwner:(int64_t)a9;
- (id)description;
- (unint64_t)hash;
@end

@implementation UISceneOpenURLOptions

+ (id)_optionsFromPayload:(id)a3 sourceProcessHandle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = [v5 objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
  v7 = [v5 objectForKey:@"_UISceneOpenURLOptionsAnnotationKey"];
  if (!v7)
  {
    v7 = [v5 objectForKey:@"UIApplicationOpenURLOptionsAnnotationKey"];
  }

  v8 = [v5 objectForKey:@"UIApplicationLaunchOptionsAnnotationKey"];
  v9 = v8;
  if (v7 && v8)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v25 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v28 = 0;
        _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Unexpected transition context. Annotation data set for both annotation keys", v28, 2u);
      }
    }

    else
    {
      v24 = *(__UILogGetCategoryCachedImpl("Assert", &_optionsFromPayload_sourceProcessHandle____s_category) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unexpected transition context. Annotation data set for both annotation keys", buf, 2u);
      }
    }
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *MEMORY[0x1E69635A0];
  v12 = v10;
  v13 = [v5 objectForKey:v11];
  v14 = [v13 BOOLValue];

  v15 = [v5 objectForKey:@"_UISceneConnectionOptionsOpenAsDownload"];
  v16 = [v15 BOOLValue];

  v17 = [v5 objectForKey:@"_UISceneOpenURLOptionsContentOwnerKey"];
  v18 = [v17 integerValue];

  v19 = [UIEventAttribution alloc];
  v20 = [v5 objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  v21 = [(UIEventAttribution *)v19 initWithUISClickAttribution:v20];

  v22 = [[UISceneOpenURLOptions alloc] _initWithSourceApplication:v26 processHandle:v6 annotation:v12 openInPlace:v14 eventAttribution:v21 openAsDownload:v16 contentOwner:v18];

  return v22;
}

- (id)_initWithSourceApplication:(id)a3 processHandle:(id)a4 annotation:(id)a5 openInPlace:(BOOL)a6 eventAttribution:(id)a7 openAsDownload:(BOOL)a8 contentOwner:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v22 = a5;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = UISceneOpenURLOptions;
  v19 = [(UISceneOpenURLOptions *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sourceApp, a3);
    objc_storeStrong(&v20->_sourceProcessHandle, a4);
    objc_storeStrong(&v20->_annotation, a5);
    v20->_openInPlace = a6;
    objc_storeStrong(&v20->_eventAttribution, a7);
    v20->_openAsDownload = a8;
    v20->_contentOwner = a9;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    v6 = v4;
    v7 = objc_opt_class();
    if ([v7 isEqual:objc_opt_class()] && (v8 = -[UISceneOpenURLOptions hash](self, "hash"), v8 == -[UISceneOpenURLOptions hash](v6, "hash")) && ((sourceApp = self->_sourceApp, sourceApp == v6->_sourceApp) || sourceApp && -[NSString isEqual:](sourceApp, "isEqual:")) && ((sourceProcessHandle = self->_sourceProcessHandle, sourceProcessHandle == v6->_sourceProcessHandle) || sourceProcessHandle && -[BSProcessHandle isEqual:](sourceProcessHandle, "isEqual:")) && self->_annotation == v6->_annotation && (openInPlace = self->_openInPlace, openInPlace == -[UISceneOpenURLOptions openInPlace](v6, "openInPlace")))
    {
      eventAttribution = self->_eventAttribution;
      v13 = [(UISceneOpenURLOptions *)v6 eventAttribution];
      if (eventAttribution == v13 && (openAsDownload = self->_openAsDownload, openAsDownload == [(UISceneOpenURLOptions *)v6 _openAsDownload]))
      {
        contentOwner = self->_contentOwner;
        v16 = contentOwner == [(UISceneOpenURLOptions *)v6 _contentOwner];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceApp hash];
  v4 = [self->_annotation hash]^ v3;
  sourceProcessHandle = self->_sourceProcessHandle;
  if (sourceProcessHandle)
  {
    v4 ^= [(BSProcessHandle *)sourceProcessHandle hash];
  }

  return [(UIEventAttribution *)self->_eventAttribution hash]^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  if (self->_openInPlace)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 stringWithFormat:@"<%@: %p sourceApp: %@; annotation: %@; openInPlace: %@", v4, self, self->_sourceApp, self->_annotation, v5];;
  [v6 appendFormat:@"; _eventAttribution: %@", self->_eventAttribution];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, @">"];

  return v7;
}

@end