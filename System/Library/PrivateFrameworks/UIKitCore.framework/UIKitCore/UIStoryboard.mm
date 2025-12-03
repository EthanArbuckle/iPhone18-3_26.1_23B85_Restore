@interface UIStoryboard
+ (UIStoryboard)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil;
- (NSString)name;
- (UIStoryboard)initWithBundle:(id)bundle storyboardFileName:(id)name identifierToNibNameMap:(id)map identifierToExternalStoryboardReferenceMap:(id)referenceMap designatedEntryPointIdentifier:(id)identifier designatedMenuIdentifier:(id)menuIdentifier;
- (UIViewController)instantiateViewControllerWithIdentifier:(NSString *)identifier;
- (id)__reallyInstantiateViewControllerWithIdentifier:(id)identifier creator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender;
- (id)_instantiateInitialMenu;
- (id)_instantiateInitialViewControllerWithCreator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender;
- (id)_instantiateViewControllerReferencedByPlaceholderWithIdentifier:(id)identifier storyboardSegueTemplate:(id)template sender:(id)sender;
- (id)_instantiateViewControllerWithIdentifier:(id)identifier creator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender;
- (id)identifierForStringsFile;
- (id)nibForStoryboardNibNamed:(id)named;
- (id)nibForViewControllerWithIdentifier:(id)identifier;
- (id)referencedStoryboardForExternalReferenceInfo:(id)info;
- (void)dealloc;
@end

@implementation UIStoryboard

- (id)identifierForStringsFile
{
  bundle = [(UIStoryboard *)self bundle];
  name = [(UIStoryboard *)self name];

  return [(NSBundle *)bundle pathForResource:name ofType:@"storyboardc"];
}

- (NSString)name
{
  storyboardFileName = [(UIStoryboard *)self storyboardFileName];

  return [(NSString *)storyboardFileName stringByDeletingPathExtension];
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

- (UIStoryboard)initWithBundle:(id)bundle storyboardFileName:(id)name identifierToNibNameMap:(id)map identifierToExternalStoryboardReferenceMap:(id)referenceMap designatedEntryPointIdentifier:(id)identifier designatedMenuIdentifier:(id)menuIdentifier
{
  if (bundle)
  {
    if (map)
    {
      goto LABEL_3;
    }

LABEL_8:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (name)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!map)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (name)
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
    v16->bundle = bundle;
    v16->storyboardFileName = [name copy];
    v16->identifierToNibNameMap = [map copy];
    v16->identifierToExternalStoryboardReferenceMap = [referenceMap copy];
    v16->designatedEntryPointIdentifier = [identifier copy];
    v16->designatedMenuIdentifier = [menuIdentifier copy];
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
    storyboardBundleOrNil = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find a storyboard named '%@' in bundle %@", name, storyboardBundleOrNil];
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
      storyboardBundleOrNil = [MEMORY[0x1E696AEC0] stringWithFormat:@"There doesn't seem to be a valid compiled storyboard at path '%@'", v9];
      v18 = v20;
      v19 = v21;
LABEL_12:
      objc_exception_throw([v18 exceptionWithName:v19 reason:storyboardBundleOrNil userInfo:0]);
    }
  }

  v12 = v11;
  v13 = [[self alloc] initWithBundle:storyboardBundleOrNil storyboardFileName:v10 identifierToNibNameMap:objc_msgSend(v12 identifierToExternalStoryboardReferenceMap:"objectForKey:" designatedEntryPointIdentifier:@"UIViewControllerIdentifiersToNibNames" designatedMenuIdentifier:{objc_msgSend(v12, "objectForKey:", @"UIViewControllerIdentifiersToExternalStoryboardReferences", objc_msgSend(v12, "objectForKey:", @"UIStoryboardDesignatedEntryPointIdentifier", objc_msgSend(v12, "objectForKey:", @"UIStoryboardDesignatedMenuIdentifier"}];

  return v13;
}

- (id)nibForStoryboardNibNamed:(id)named
{
  if (![named length])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [[UINib alloc] initWithNibName:named directory:[(UIStoryboard *)self storyboardFileName] bundle:[(UIStoryboard *)self bundle]];
  [(UINib *)v6 setIdentifierForStringsFile:[(UIStoryboard *)self identifierForStringsFile]];
  return v6;
}

- (id)nibForViewControllerWithIdentifier:(id)identifier
{
  if (![identifier length])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [(NSMutableDictionary *)self->identifierToUINibMap objectForKey:identifier];
  if (!v6)
  {
    v7 = [(NSDictionary *)[(UIStoryboard *)self identifierToNibNameMap] objectForKey:identifier];
    if (v7)
    {
      v6 = [(UIStoryboard *)self nibForStoryboardNibNamed:v7];
      identifierToUINibMap = self->identifierToUINibMap;
      if (!identifierToUINibMap)
      {
        identifierToUINibMap = objc_alloc_init(MEMORY[0x1E695DF90]);
        self->identifierToUINibMap = identifierToUINibMap;
      }

      [(NSMutableDictionary *)identifierToUINibMap setObject:v6 forKey:identifier];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)referencedStoryboardForExternalReferenceInfo:(id)info
{
  v5 = [info objectForKey:@"UIReferencedStoryboardName"];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = [info objectForKey:@"UIReferencedBundleIdentifier"];
  if (v7)
  {
    bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v7];
  }

  else
  {
    bundle = [(UIStoryboard *)self bundle];
  }

  return [UIStoryboard storyboardWithName:v6 bundle:bundle];
}

- (id)_instantiateViewControllerReferencedByPlaceholderWithIdentifier:(id)identifier storyboardSegueTemplate:(id)template sender:(id)sender
{
  v10 = [(NSDictionary *)[(UIStoryboard *)self identifierToExternalStoryboardReferenceMap] objectForKey:identifier];
  if (!v10)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v11 = [(UIStoryboard *)self referencedStoryboardForExternalReferenceInfo:v10];
  v12 = [v10 objectForKey:@"UIReferencedControllerIdentifier"];
  if (v12)
  {

    return [v11 _instantiateViewControllerWithIdentifier:v12 creator:0 storyboardSegueTemplate:template sender:sender];
  }

  else
  {

    return [v11 _instantiateInitialViewControllerWithCreator:0 storyboardSegueTemplate:template sender:sender];
  }
}

- (UIViewController)instantiateViewControllerWithIdentifier:(NSString *)identifier
{
  __currentStoryboardSegueTemplate = [(UIStoryboard *)self __currentStoryboardSegueTemplate];
  __currentSender = [(UIStoryboard *)self __currentSender];
  __currentStoryboardSegueCreator = [(UIStoryboard *)self __currentStoryboardSegueCreator];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:0];
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:0];
  [(UIStoryboard *)self set__currentSender:0];

  return [(UIStoryboard *)self __reallyInstantiateViewControllerWithIdentifier:identifier creator:__currentStoryboardSegueCreator storyboardSegueTemplate:__currentStoryboardSegueTemplate sender:__currentSender];
}

- (id)_instantiateViewControllerWithIdentifier:(id)identifier creator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender
{
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:template];
  [(UIStoryboard *)self set__currentSender:sender];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:creator];
  v10 = [(UIStoryboard *)self instantiateViewControllerWithIdentifier:identifier];
  [(UIStoryboard *)self set__currentStoryboardSegueCreator:0];
  [(UIStoryboard *)self set__currentStoryboardSegueTemplate:0];
  [(UIStoryboard *)self set__currentSender:0];
  return v10;
}

- (id)__reallyInstantiateViewControllerWithIdentifier:(id)identifier creator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender
{
  v12 = [(UIStoryboard *)self nibForViewControllerWithIdentifier:?];
  if (!v12)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Storyboard (%@) doesn't contain a view controller with identifier '%@'", self, identifier), 0}]);
  }

  v13 = v12;
  v14 = objc_alloc_init(UIStoryboardScene);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:self forKey:@"UIStoryboardPlaceholder"];
  v16 = [MEMORY[0x1E695DF90] dictionaryWithObject:v15 forKey:@"UINibExternalObjects"];
  v17 = v16;
  if (template)
  {
    [v16 setObject:template forKey:@"UINibSourceSegueTemplate"];
  }

  if (sender)
  {
    [v17 setObject:sender forKey:@"UINibPerformSegueSender"];
  }

  if (creator)
  {
    [v17 setObject:creator forKey:@"UINibPerformSegueCreator"];
  }

  [v13 instantiateWithOwner:v14 options:v17];
  [v17 removeAllObjects];
  sceneViewController = [(UIStoryboardScene *)v14 sceneViewController];
  if (!sceneViewController)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (![sceneViewController storyboardIdentifier])
  {
    [sceneViewController setStoryboardIdentifier:identifier];
  }

  return sceneViewController;
}

- (id)_instantiateInitialViewControllerWithCreator:(id)creator storyboardSegueTemplate:(id)template sender:(id)sender
{
  result = [(UIStoryboard *)self designatedEntryPointIdentifier];
  if (result)
  {
    designatedEntryPointIdentifier = [(UIStoryboard *)self designatedEntryPointIdentifier];

    return [(UIStoryboard *)self _instantiateViewControllerWithIdentifier:designatedEntryPointIdentifier creator:creator storyboardSegueTemplate:template sender:sender];
  }

  return result;
}

@end