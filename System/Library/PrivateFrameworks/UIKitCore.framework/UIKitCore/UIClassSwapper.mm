@interface UIClassSwapper
+ (id)swapperForObject:(id)object withClassName:(id)name;
- (UIClassSwapper)initWithCoder:(id)coder;
- (UIClassSwapper)initWithObject:(id)object andClassName:(id)name;
- (id)performSelectorForObject:(id)object selector:(SEL)selector withObject:(id)withObject withObject:(id)a6 withObject:(id)a7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIClassSwapper

- (UIClassSwapper)initWithObject:(id)object andClassName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = UIClassSwapper;
  v9 = [(UIClassSwapper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->object, object);
    v11 = [nameCopy copy];
    className = v10->className;
    v10->className = v11;
  }

  return v10;
}

- (id)performSelectorForObject:(id)object selector:(SEL)selector withObject:(id)withObject withObject:(id)a6 withObject:(id)a7
{
  objectCopy = object;
  withObjectCopy = withObject;
  v14 = a6;
  v15 = a7;
  if (!selector)
  {
    [(UIClassSwapper *)self doesNotRecognizeSelector:0];
  }

  selector = [objectCopy selector];

  return selector;
}

- (UIClassSwapper)initWithCoder:(id)coder
{
  v66 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"UIClassName"];
  v6 = NSClassFromString(v5);
  v7 = [coderCopy decodeObjectForKey:@"UIOriginalClassName"];
  v8 = NSClassFromString(v7);

  if (!v6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Storyboard", &_MergedGlobals_1159) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unknown class %@ in Interface Builder file.\n", buf, 0xCu);
    }
  }

  _storyboardDecodingContext = [coderCopy _storyboardDecodingContext];
  sourceSegueTemplate = [_storyboardDecodingContext sourceSegueTemplate];

  prepareForChildViewControllerSelector = [sourceSegueTemplate prepareForChildViewControllerSelector];
  _storyboardDecodingContext2 = [coderCopy _storyboardDecodingContext];
  parentViewController = [_storyboardDecodingContext2 parentViewController];

  if (parentViewController)
  {
    _storyboardDecodingContext3 = [coderCopy _storyboardDecodingContext];
    parentViewController2 = [_storyboardDecodingContext3 parentViewController];
    _storyboardDecodingContext4 = [coderCopy _storyboardDecodingContext];
    prepareForChildViewControllerSelector = [parentViewController2 _customSelectorToCreateChildViewControllerAtIndex:{objc_msgSend(_storyboardDecodingContext4, "childViewControllerIndex")}];
  }

  viewController = [sourceSegueTemplate viewController];
  _storyboardDecodingContext5 = [coderCopy _storyboardDecodingContext];
  creator = [_storyboardDecodingContext5 creator];

  if (creator)
  {
    _storyboardDecodingContext6 = [coderCopy _storyboardDecodingContext];
    creator2 = [_storyboardDecodingContext6 creator];

    _storyboardDecodingContext7 = [coderCopy _storyboardDecodingContext];
    [_storyboardDecodingContext7 setCreator:0];

    _storyboardDecodingContext8 = [coderCopy _storyboardDecodingContext];
    [_storyboardDecodingContext8 setClassSwapperTemplate:self];

    v25 = (creator2)[2](creator2, coderCopy);
    _storyboardDecodingContext9 = [coderCopy _storyboardDecodingContext];
    v27 = _storyboardDecodingContext9;
    if (v25)
    {
      v57 = v8;
      v58 = v5;
      classSwapperTemplate = [_storyboardDecodingContext9 classSwapperTemplate];

      if (classSwapperTemplate)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:134 description:@"Custom instantiated view controller must call -[super initWithCoder:]"];
      }

      _storyboardDecodingContext10 = [coderCopy _storyboardDecodingContext];
      [_storyboardDecodingContext10 setClassSwapperTemplate:0];

LABEL_16:
      if (v6)
      {
        v40 = v6;
      }

      else
      {
        v40 = v57;
      }

      v5 = v58;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v42 = NSStringFromClass(v40);
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:150 description:{@"Custom instantiated %@ must be kind of class %@", v25, v42}];

        v5 = v58;
      }

      goto LABEL_34;
    }

    [_storyboardDecodingContext9 setClassSwapperTemplate:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    v57 = v8;
    v58 = v5;
    _storyboardDecodingContext11 = [coderCopy _storyboardDecodingContext];
    [_storyboardDecodingContext11 setClassSwapperTemplate:self];

    _storyboardDecodingContext12 = [coderCopy _storyboardDecodingContext];
    sender = [_storyboardDecodingContext12 sender];
    identifier = [sourceSegueTemplate identifier];
    v25 = [(UIClassSwapper *)self performSelectorForObject:viewController selector:prepareForChildViewControllerSelector withObject:coderCopy withObject:sender withObject:identifier];

    _storyboardDecodingContext13 = [coderCopy _storyboardDecodingContext];
    v36 = _storyboardDecodingContext13;
    if (v25)
    {
      classSwapperTemplate2 = [_storyboardDecodingContext13 classSwapperTemplate];

      if (classSwapperTemplate2)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = NSStringFromSelector(prepareForChildViewControllerSelector);
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:139 description:{@"Custom instantiated view controller must call -[super initWithCoder:] when created from -[%@ %@]", viewController, v39}];
      }

      creator2 = [coderCopy _storyboardDecodingContext];
      [creator2 setClassSwapperTemplate:0];
      goto LABEL_16;
    }

    [_storyboardDecodingContext13 setClassSwapperTemplate:0];

    v49 = *(__UILogGetCategoryCachedImpl("Storyboard", &qword_1ED49ED68) + 8);
    v8 = v57;
    v5 = v58;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = v49;
      v51 = NSStringFromSelector(prepareForChildViewControllerSelector);
      *buf = 138412802;
      v61 = viewController;
      v62 = 2112;
      v63 = v51;
      v64 = 2112;
      v65 = v58;
      _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "[%@ %@] returned nil, falling back to [%@ initWithCoder:]", buf, 0x20u);

      v8 = v57;
      v5 = v58;
    }
  }

  else if (prepareForChildViewControllerSelector)
  {
    v43 = *(__UILogGetCategoryCachedImpl("Storyboard", &qword_1ED49ED70) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = v43;
      v45 = v5;
      v46 = v44;
      NSStringFromSelector(prepareForChildViewControllerSelector);
      v48 = v47 = v8;
      *buf = 138412546;
      v61 = viewController;
      v62 = 2112;
      v63 = v48;
      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "Unable to find method [%@ %@]", buf, 0x16u);

      v8 = v47;
      v5 = v45;
    }
  }

  if (v6)
  {
    v52 = v6;
  }

  else
  {
    v52 = v8;
  }

  v53 = [v52 alloc];
  [coderCopy replaceObject:self withObject:v53];
  if (v8 == objc_opt_class())
  {
    v54 = [v53 init];
  }

  else
  {
    v54 = [v53 initWithCoder:coderCopy];
  }

  v25 = v54;
LABEL_34:
  v55 = v25;

  return v55;
}

- (void)encodeWithCoder:(id)coder
{
  object = self->object;
  coderCopy = coder;
  [object encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->className forKey:@"UIClassName"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [coderCopy encodeObject:v7 forKey:@"UIOriginalClassName"];
}

+ (id)swapperForObject:(id)object withClassName:(id)name
{
  nameCopy = name;
  objectCopy = object;
  v8 = [[self alloc] initWithObject:objectCopy andClassName:nameCopy];

  return v8;
}

@end