@interface UIClassSwapper
+ (id)swapperForObject:(id)a3 withClassName:(id)a4;
- (UIClassSwapper)initWithCoder:(id)a3;
- (UIClassSwapper)initWithObject:(id)a3 andClassName:(id)a4;
- (id)performSelectorForObject:(id)a3 selector:(SEL)a4 withObject:(id)a5 withObject:(id)a6 withObject:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIClassSwapper

- (UIClassSwapper)initWithObject:(id)a3 andClassName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UIClassSwapper;
  v9 = [(UIClassSwapper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->object, a3);
    v11 = [v8 copy];
    className = v10->className;
    v10->className = v11;
  }

  return v10;
}

- (id)performSelectorForObject:(id)a3 selector:(SEL)a4 withObject:(id)a5 withObject:(id)a6 withObject:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!a4)
  {
    [(UIClassSwapper *)self doesNotRecognizeSelector:0];
  }

  v16 = [v12 a4];

  return v16;
}

- (UIClassSwapper)initWithCoder:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"UIClassName"];
  v6 = NSClassFromString(v5);
  v7 = [v4 decodeObjectForKey:@"UIOriginalClassName"];
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

  v10 = [v4 _storyboardDecodingContext];
  v11 = [v10 sourceSegueTemplate];

  v12 = [v11 prepareForChildViewControllerSelector];
  v13 = [v4 _storyboardDecodingContext];
  v14 = [v13 parentViewController];

  if (v14)
  {
    v15 = [v4 _storyboardDecodingContext];
    v16 = [v15 parentViewController];
    v17 = [v4 _storyboardDecodingContext];
    v12 = [v16 _customSelectorToCreateChildViewControllerAtIndex:{objc_msgSend(v17, "childViewControllerIndex")}];
  }

  v18 = [v11 viewController];
  v19 = [v4 _storyboardDecodingContext];
  v20 = [v19 creator];

  if (v20)
  {
    v21 = [v4 _storyboardDecodingContext];
    v22 = [v21 creator];

    v23 = [v4 _storyboardDecodingContext];
    [v23 setCreator:0];

    v24 = [v4 _storyboardDecodingContext];
    [v24 setClassSwapperTemplate:self];

    v25 = (v22)[2](v22, v4);
    v26 = [v4 _storyboardDecodingContext];
    v27 = v26;
    if (v25)
    {
      v57 = v8;
      v58 = v5;
      v28 = [v26 classSwapperTemplate];

      if (v28)
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:134 description:@"Custom instantiated view controller must call -[super initWithCoder:]"];
      }

      v30 = [v4 _storyboardDecodingContext];
      [v30 setClassSwapperTemplate:0];

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
        v41 = [MEMORY[0x1E696AAA8] currentHandler];
        v42 = NSStringFromClass(v40);
        [v41 handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:150 description:{@"Custom instantiated %@ must be kind of class %@", v25, v42}];

        v5 = v58;
      }

      goto LABEL_34;
    }

    [v26 setClassSwapperTemplate:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    v57 = v8;
    v58 = v5;
    v31 = [v4 _storyboardDecodingContext];
    [v31 setClassSwapperTemplate:self];

    v32 = [v4 _storyboardDecodingContext];
    v33 = [v32 sender];
    v34 = [v11 identifier];
    v25 = [(UIClassSwapper *)self performSelectorForObject:v18 selector:v12 withObject:v4 withObject:v33 withObject:v34];

    v35 = [v4 _storyboardDecodingContext];
    v36 = v35;
    if (v25)
    {
      v37 = [v35 classSwapperTemplate];

      if (v37)
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = NSStringFromSelector(v12);
        [v38 handleFailureInMethod:a2 object:self file:@"UIClassSwapper.m" lineNumber:139 description:{@"Custom instantiated view controller must call -[super initWithCoder:] when created from -[%@ %@]", v18, v39}];
      }

      v22 = [v4 _storyboardDecodingContext];
      [v22 setClassSwapperTemplate:0];
      goto LABEL_16;
    }

    [v35 setClassSwapperTemplate:0];

    v49 = *(__UILogGetCategoryCachedImpl("Storyboard", &qword_1ED49ED68) + 8);
    v8 = v57;
    v5 = v58;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = v49;
      v51 = NSStringFromSelector(v12);
      *buf = 138412802;
      v61 = v18;
      v62 = 2112;
      v63 = v51;
      v64 = 2112;
      v65 = v58;
      _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "[%@ %@] returned nil, falling back to [%@ initWithCoder:]", buf, 0x20u);

      v8 = v57;
      v5 = v58;
    }
  }

  else if (v12)
  {
    v43 = *(__UILogGetCategoryCachedImpl("Storyboard", &qword_1ED49ED70) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = v43;
      v45 = v5;
      v46 = v44;
      NSStringFromSelector(v12);
      v48 = v47 = v8;
      *buf = 138412546;
      v61 = v18;
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
  [v4 replaceObject:self withObject:v53];
  if (v8 == objc_opt_class())
  {
    v54 = [v53 init];
  }

  else
  {
    v54 = [v53 initWithCoder:v4];
  }

  v25 = v54;
LABEL_34:
  v55 = v25;

  return v55;
}

- (void)encodeWithCoder:(id)a3
{
  object = self->object;
  v5 = a3;
  [object encodeWithCoder:v5];
  [v5 encodeObject:self->className forKey:@"UIClassName"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 encodeObject:v7 forKey:@"UIOriginalClassName"];
}

+ (id)swapperForObject:(id)a3 withClassName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithObject:v7 andClassName:v6];

  return v8;
}

@end