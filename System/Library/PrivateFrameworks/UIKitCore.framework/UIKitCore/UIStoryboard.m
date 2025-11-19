@interface UIStoryboard
+ (UIStoryboard)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil;
- (NSString)name;
- (UIStoryboard)initWithBundle:(id)a3 storyboardFileName:(id)a4 identifierToNibNameMap:(id)a5 identifierToExternalStoryboardReferenceMap:(id)a6 designatedEntryPointIdentifier:(id)a7 designatedMenuIdentifier:(id)a8;
- (UIViewController)instantiateViewControllerWithIdentifier:(NSString *)identifier;
- (id)__reallyInstantiateViewControllerWithIdentifier:(id)a3 creator:(id)a4 storyboardSegueTemplate:(id)a5 sender:(id)a6;
- (id)_instantiateInitialMenu;
- (id)_instantiateInitialViewControllerWithCreator:(id)a3 storyboardSegueTemplate:(id)a4 sender:(id)a5;
- (id)_instantiateViewControllerReferencedByPlaceholderWithIdentifier:(id)a3 storyboardSegueTemplate:(id)a4 sender:(id)a5;
- (id)_instantiateViewControllerWithIdentifier:(id)a3 creator:(id)a4 storyboardSegueTemplate:(id)a5 sender:(id)a6;
- (id)identifierForStringsFile;
- (id)nibForStoryboardNibNamed:(id)a3;
- (id)nibForViewControllerWithIdentifier:(id)a3;
- (id)referencedStoryboardForExternalReferenceInfo:(id)a3;
- (void)dealloc;
@end

@implementation UIStoryboard

- (id)identifierForStringsFile
{
  v3 = [(UIStoryboard *)self bundle];
  v4 = [(UIStoryboard *)self name];

  return [(NSBundle *)v3 pathForResource:v4 ofType:@"storyboardc"];
}

- (NSString)name
{
  v2 = [(UIStoryboard *)self storyboardFileName];

  return [(NSString *)v2 stringByDeletingPathExtension];
}

- (id)_instantiateInitialMenu
{
  result = [(UIStoryboard *)self designatedMenuIdentifier];
  if (result)
  {
    v5 = result;
    result = [(UIStoryboard *)self nibForViewControllerWithIdentifier:result];
    if (result)
    {
      v6 = result;
      v7 = objc_alloc_init(UIStoryboardScene);
      [v6 instantiateWithOwner:v7 options:0];
      result = [(UIStoryboardScene *)v7 sceneViewController];
      if (!result)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
        return 0;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIStoryboard;
  [(UIStoryboard *)&v3 dealloc];
}

- (UIStoryboard)initWithBundle:(id)a3 storyboardFileName:(id)a4 identifierToNibNameMap:(id)a5 identifierToExternalStoryboardReferenceMap:(id)a6 designatedEntryPointIdentifier:(id)a7 designatedMenuIdentifier:(id)a8
{
  if (a3)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_8:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_9:
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_4:
  v18.receiver = self;
  v18.super_class = UIStoryboard;
  v16 = [(UIStoryboard *)&v18 init];
  if (v16)
  {
    v16->bundle = a3;
    v16->storyboardFileName = [a4 copy];
    v16->identifierToNibNameMap = [a5 copy];
    v16->identifierToExternalStoryboardReferenceMap = [a6 copy];
    v16->designatedEntryPointIdentifier = [a7 copy];
    v16->designatedMenuIdentifier = [a8 copy];
  }

  return v16;
}

+ (UIStoryboard)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil
{
  if ([(NSString *)name length])
  {
    if (storyboardBundleOrNil)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!storyboardBundleOrNil)
  {
LABEL_3:
    storyboardBundleOrNil = [MEMORY[0x1E696AAE8] mainBundle];
  }

LABEL_4:
  v8 = [(NSBundle *)storyboardBundleOrNil pathForResource:name ofType:@"storyboardc"];
  if (!v8)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find a storyboard named '%@' in bundle %@", name, storyboardBundleOrNil];
    v18 = v15;
    v19 = v16;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [(NSString *)name stringByAppendingPathExtension:@"storyboardc"];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:{-[NSString stringByAppendingPathComponent:](v9, "stringByAppendingPathComponent:", @"Info-8.0+.plist"}];
  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:{-[NSString stringByAppendingPathComponent:](v9, "stringByAppendingPathComponent:", @"Info.plist"}];
    if (!v11)
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There doesn't seem to be a valid compiled storyboard at path '%@'", v9];
      v18 = v20;
      v19 = v21;
LABEL_12:
      objc_exception_throw([v18 exceptionWithName:v19 reason:v17 userInfo:0]);
    }
  }

  v12 = v11;
  v13 = [[a1 alloc] initWithBundle:storyboardBundleOrNil storyboardFileName:v10 identifierToNibNameMap:objc_msgSend(v12 identifierToExternalStoryboardReferenceMap:"objectForKey:" designatedEntryPointIdentifier:@"UIViewControllerIdentifiersToNibNames" designatedMenuIdentifier:{objc_msgSend(v12, "objectForKey:", @"UIViewControllerIdentifiersToExternalStoryboardReferences", objc_msgSend(v12, "objectForKey:", @"UIStoryboardDesignatedEntryPointIdentifier", objc_msgSend(v12, "objectForKey:", @"UIStoryboardDesignatedMenuIdentifier"}];

  return v13;
}

- (id)nibForStoryboardNibNamed:(id)a3
{
  if (![a3 length])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [[UINib alloc] initWithNibName:a3 directory:[(UIStoryboard *)self storyboardFileName] bundle:[(UIStoryboard *)self bundle]];
  [(UINib *)v6 setIdentifierForStringsFile:[(UIStoryboard *)self identifierForStringsFile]];
  return v6;
}

- (id)nibForViewControllerWithIdentifier:(id)a3
{
  if (![a3 length])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [(NSMutableDictionary *)self->identifierToUINibMap objectForKey:a3];
  if (!v6)
  {
    v7 = [(NSDictionary *)[(UIStoryboard *)self identifierToNibNameMap] objectForKey:a3];
    if (v7)
    {
      v6 = [(UIStoryboard *)self nibForStoryboardNibNamed:v7];
      identifierToUINibMap = self->identifierToUINibMap;
      if (!identifierToUINibMap)
      {
        identifierToUINibMap = objc_alloc_init(MEMORY[0x1E695DF90]);
        self->identifierToUINibMap = identifierToUINibMap;
      }

      [(NSMutableDictionary *)identifierToUINibMap setObject:v6 forKey:a3];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)referencedStoryboardForExternalReferenceInfo:(id)a3
{
  v5 = [a3 objectForKey:@"UIReferencedStoryboardName"];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = [a3 objectForKey:@"UIReferencedBundleIdentifier"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v7];
  }

  else
  {
    v8 = [(UIStoryboard *)self bundle];
  }

  return [UIStoryboard storyboardWithName:v6 bundle:v8];
}

- (id)_instantiateViewControllerReferencedByPlaceholderWithIdentifier:(id)a3 storyboardSegueTemplate:(id)a4 sender:(id)a5
{
  v10 = [(NSDictionary *)[(UIStoryboard *)self identifierToExternalStoryboardReferenceMap] objectForKey:a3];
  if (!v10)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v11 = [(UIStoryboard *)self referencedStoryboardForExternalReferenceInfo:v10];
  v12 = [v10 objectForKey:@"UIReferencedControllerIdentifier"];
  if (v12)
  {

    return [v11 _instantiateViewControllerWithIdentifier:v12 creator:0 storyboardSegueTemplate:a4 sender:a5];
  }

  else
  {

    return [v11 _instantiateInitialViewControllerWithCreator:0 storyboardSegueTemplate:a4 sender:a5];
  }
}

- (UIViewController)instantiateViewControllerWithIdentifier:(NSString *)identifier
{
  v5 = [(UIStoryboard *)self __currentStoryboardSegueTemplate];
  v6 = [(UIStoryboard *)self __currentSender];
  v7 = [(UIStoryboard *)self __currentStoryboardSegueCreator];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:0];
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:0];
  [(UIStoryboard *)self set__currentSender:0];

  return [(UIStoryboard *)self __reallyInstantiateViewControllerWithIdentifier:identifier creator:v7 storyboardSegueTemplate:v5 sender:v6];
}

- (id)_instantiateViewControllerWithIdentifier:(id)a3 creator:(id)a4 storyboardSegueTemplate:(id)a5 sender:(id)a6
{
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:a5];
  [(UIStoryboard *)self set__currentSender:a6];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:a4];
  v10 = [(UIStoryboard *)self instantiateViewControllerWithIdentifier:a3];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:0];
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:0];
  [(UIStoryboard *)self set__currentSender:0];
  return v10;
}

- (id)__reallyInstantiateViewControllerWithIdentifier:(id)a3 creator:(id)a4 storyboardSegueTemplate:(id)a5 sender:(id)a6
{
  v12 = [(UIStoryboard *)self nibForViewControllerWithIdentifier:?];
  if (!v12)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Storyboard (%@) doesn't contain a view controller with identifier '%@'", self, a3), 0}]);
  }

  v13 = v12;
  v14 = objc_alloc_init(UIStoryboardScene);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:self forKey:@"UIStoryboardPlaceholder"];
  v16 = [MEMORY[0x1E695DF90] dictionaryWithObject:v15 forKey:@"UINibExternalObjects"];
  v17 = v16;
  if (a5)
  {
    [v16 setObject:a5 forKey:@"UINibSourceSegueTemplate"];
  }

  if (a6)
  {
    [v17 setObject:a6 forKey:@"UINibPerformSegueSender"];
  }

  if (a4)
  {
    [v17 setObject:a4 forKey:@"UINibPerformSegueCreator"];
  }

  [v13 instantiateWithOwner:v14 options:v17];
  [v17 removeAllObjects];
  v18 = [(UIStoryboardScene *)v14 sceneViewController];
  if (!v18)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (![v18 storyboardIdentifier])
  {
    [v18 setStoryboardIdentifier:a3];
  }

  return v18;
}

- (id)_instantiateInitialViewControllerWithCreator:(id)a3 storyboardSegueTemplate:(id)a4 sender:(id)a5
{
  result = [(UIStoryboard *)self designatedEntryPointIdentifier];
  if (result)
  {
    v10 = [(UIStoryboard *)self designatedEntryPointIdentifier];

    return [(UIStoryboard *)self _instantiateViewControllerWithIdentifier:v10 creator:a3 storyboardSegueTemplate:a4 sender:a5];
  }

  return result;
}

@end