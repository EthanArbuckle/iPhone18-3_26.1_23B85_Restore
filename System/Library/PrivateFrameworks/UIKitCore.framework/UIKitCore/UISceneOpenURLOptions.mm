@interface UISceneOpenURLOptions
+ (id)_optionsFromPayload:(id)payload sourceProcessHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (id)_initWithSourceApplication:(id)application processHandle:(id)handle annotation:(id)annotation openInPlace:(BOOL)place eventAttribution:(id)attribution openAsDownload:(BOOL)download contentOwner:(int64_t)owner;
- (id)description;
- (unint64_t)hash;
@end

@implementation UISceneOpenURLOptions

+ (id)_optionsFromPayload:(id)payload sourceProcessHandle:(id)handle
{
  payloadCopy = payload;
  handleCopy = handle;
  v26 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
  v7 = [payloadCopy objectForKey:@"_UISceneOpenURLOptionsAnnotationKey"];
  if (!v7)
  {
    v7 = [payloadCopy objectForKey:@"UIApplicationOpenURLOptionsAnnotationKey"];
  }

  v8 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsAnnotationKey"];
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
  v13 = [payloadCopy objectForKey:v11];
  bOOLValue = [v13 BOOLValue];

  v15 = [payloadCopy objectForKey:@"_UISceneConnectionOptionsOpenAsDownload"];
  bOOLValue2 = [v15 BOOLValue];

  v17 = [payloadCopy objectForKey:@"_UISceneOpenURLOptionsContentOwnerKey"];
  integerValue = [v17 integerValue];

  v19 = [UIEventAttribution alloc];
  v20 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  v21 = [(UIEventAttribution *)v19 initWithUISClickAttribution:v20];

  v22 = [[UISceneOpenURLOptions alloc] _initWithSourceApplication:v26 processHandle:handleCopy annotation:v12 openInPlace:bOOLValue eventAttribution:v21 openAsDownload:bOOLValue2 contentOwner:integerValue];

  return v22;
}

- (id)_initWithSourceApplication:(id)application processHandle:(id)handle annotation:(id)annotation openInPlace:(BOOL)place eventAttribution:(id)attribution openAsDownload:(BOOL)download contentOwner:(int64_t)owner
{
  applicationCopy = application;
  handleCopy = handle;
  annotationCopy = annotation;
  attributionCopy = attribution;
  v23.receiver = self;
  v23.super_class = UISceneOpenURLOptions;
  v19 = [(UISceneOpenURLOptions *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sourceApp, application);
    objc_storeStrong(&v20->_sourceProcessHandle, handle);
    objc_storeStrong(&v20->_annotation, annotation);
    v20->_openInPlace = place;
    objc_storeStrong(&v20->_eventAttribution, attribution);
    v20->_openAsDownload = download;
    v20->_contentOwner = owner;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    v6 = equalCopy;
    v7 = objc_opt_class();
    if ([v7 isEqual:objc_opt_class()] && (v8 = -[UISceneOpenURLOptions hash](self, "hash"), v8 == -[UISceneOpenURLOptions hash](v6, "hash")) && ((sourceApp = self->_sourceApp, sourceApp == v6->_sourceApp) || sourceApp && -[NSString isEqual:](sourceApp, "isEqual:")) && ((sourceProcessHandle = self->_sourceProcessHandle, sourceProcessHandle == v6->_sourceProcessHandle) || sourceProcessHandle && -[BSProcessHandle isEqual:](sourceProcessHandle, "isEqual:")) && self->_annotation == v6->_annotation && (openInPlace = self->_openInPlace, openInPlace == -[UISceneOpenURLOptions openInPlace](v6, "openInPlace")))
    {
      eventAttribution = self->_eventAttribution;
      eventAttribution = [(UISceneOpenURLOptions *)v6 eventAttribution];
      if (eventAttribution == eventAttribution && (openAsDownload = self->_openAsDownload, openAsDownload == [(UISceneOpenURLOptions *)v6 _openAsDownload]))
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