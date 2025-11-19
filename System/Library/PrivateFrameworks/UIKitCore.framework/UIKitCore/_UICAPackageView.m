@interface _UICAPackageView
+ (BOOL)_shouldCatchDecodingExceptions;
+ (id)_newViewHierarchyFrom:(id)a3 publishedObjectViewClassMap:(id)a4 into:(id)a5;
+ (void)loadPackageViewWithObject:(id)a3 publishedObjectViewClassMap:(id)a4 completion:(id)a5;
- (_UICAPackageView)initWithContentsOfURL:(id)a3 publishedObjectViewClassMap:(id)a4;
- (_UICAPackageView)initWithData:(id)a3 publishedObjectViewClassMap:(id)a4;
- (id)publishedViewWithName:(id)a3;
@end

@implementation _UICAPackageView

+ (BOOL)_shouldCatchDecodingExceptions
{
  if (_shouldCatchDecodingExceptions_onceToken != -1)
  {
    dispatch_once(&_shouldCatchDecodingExceptions_onceToken, &__block_literal_global_714);
  }

  return _shouldCatchDecodingExceptions___shouldCatchDecodingExceptions;
}

+ (void)loadPackageViewWithObject:(id)a3 publishedObjectViewClassMap:(id)a4 completion:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(17, 0);
  if (v11)
  {
    v12 = [objc_opt_class() _shouldCatchDecodingExceptions];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke;
    block[3] = &unk_1E712B9C8;
    v26 = v12;
    v22 = v8;
    v25 = a1;
    v23 = v9;
    v24 = v10;
    v13 = v10;
    dispatch_async(v11, block);

    v14 = v22;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v27 = @"CAARFileLoadingMessage";
    v28[0] = @"Failed to get the QOS_CLASS_UTILITY queue";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v17 = [v15 errorWithDomain:@"CAARFileLoadingDomain" code:950001 userInfo:v16];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke_5;
    v18[3] = &unk_1E70F4A50;
    v19 = v17;
    v20 = v10;
    v14 = v10;
    v13 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }
}

+ (id)_newViewHierarchyFrom:(id)a3 publishedObjectViewClassMap:(id)a4 into:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 rootLayer];
  v11 = _CreateViewForLayer(v10, v7);
  v12 = [MEMORY[0x1E695DF70] array];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __75___UICAPackageView__newViewHierarchyFrom_publishedObjectViewClassMap_into___block_invoke;
  v24 = &unk_1E712B9F0;
  v25 = v7;
  v26 = v12;
  v13 = v12;
  v14 = v7;
  [v9 foreachLayer:&v21];
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  [v11 frame];
  [v8 setFrame:{v15, v16}];
  v17 = [v8 layer];
  v18 = [v9 isGeometryFlipped];

  [v17 setGeometryFlipped:v18];
  [v8 addSubview:v11];

  v19 = [v13 copy];
  return v19;
}

- (_UICAPackageView)initWithData:(id)a3 publishedObjectViewClassMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _UICAPackageView;
  v8 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = *MEMORY[0x1E6979EF0];
    v18 = 0;
    v10 = [MEMORY[0x1E6979400] packageWithData:v6 type:v9 options:0 error:&v18];
    v11 = v18;
    package = v8->_package;
    v8->_package = v10;

    v13 = v8->_package;
    if (!v13)
    {
      NSLog(&cfstr_FailedToDecode_7.isa, v11);

      v16 = 0;
      goto LABEL_6;
    }

    v14 = [_UICAPackageView _newViewHierarchyFrom:v13 publishedObjectViewClassMap:v7 into:v8];
    rootViews = v8->_rootViews;
    v8->_rootViews = v14;
  }

  v16 = v8;
LABEL_6:

  return v16;
}

- (_UICAPackageView)initWithContentsOfURL:(id)a3 publishedObjectViewClassMap:(id)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a4;
  v8 = [v6 dataWithContentsOfURL:a3];
  v9 = [(_UICAPackageView *)self initWithData:v8 publishedObjectViewClassMap:v7];

  return v9;
}

- (id)publishedViewWithName:(id)a3
{
  v3 = [(CAPackage *)self->_package publishedObjectWithName:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 delegate], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
  {
    v6 = [v3 delegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end