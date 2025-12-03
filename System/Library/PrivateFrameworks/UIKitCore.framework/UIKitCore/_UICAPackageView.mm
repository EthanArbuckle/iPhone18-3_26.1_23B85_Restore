@interface _UICAPackageView
+ (BOOL)_shouldCatchDecodingExceptions;
+ (id)_newViewHierarchyFrom:(id)from publishedObjectViewClassMap:(id)map into:(id)into;
+ (void)loadPackageViewWithObject:(id)object publishedObjectViewClassMap:(id)map completion:(id)completion;
- (_UICAPackageView)initWithContentsOfURL:(id)l publishedObjectViewClassMap:(id)map;
- (_UICAPackageView)initWithData:(id)data publishedObjectViewClassMap:(id)map;
- (id)publishedViewWithName:(id)name;
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

+ (void)loadPackageViewWithObject:(id)object publishedObjectViewClassMap:(id)map completion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  mapCopy = map;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(17, 0);
  if (v11)
  {
    _shouldCatchDecodingExceptions = [objc_opt_class() _shouldCatchDecodingExceptions];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___UICAPackageView_loadPackageViewWithObject_publishedObjectViewClassMap_completion___block_invoke;
    block[3] = &unk_1E712B9C8;
    v26 = _shouldCatchDecodingExceptions;
    v22 = objectCopy;
    selfCopy = self;
    v23 = mapCopy;
    v24 = completionCopy;
    v13 = completionCopy;
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
    v20 = completionCopy;
    v14 = completionCopy;
    v13 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }
}

+ (id)_newViewHierarchyFrom:(id)from publishedObjectViewClassMap:(id)map into:(id)into
{
  mapCopy = map;
  intoCopy = into;
  fromCopy = from;
  rootLayer = [fromCopy rootLayer];
  v11 = _CreateViewForLayer(rootLayer, mapCopy);
  array = [MEMORY[0x1E695DF70] array];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __75___UICAPackageView__newViewHierarchyFrom_publishedObjectViewClassMap_into___block_invoke;
  v24 = &unk_1E712B9F0;
  v25 = mapCopy;
  v26 = array;
  v13 = array;
  v14 = mapCopy;
  [fromCopy foreachLayer:&v21];
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  [v11 frame];
  [intoCopy setFrame:{v15, v16}];
  layer = [intoCopy layer];
  isGeometryFlipped = [fromCopy isGeometryFlipped];

  [layer setGeometryFlipped:isGeometryFlipped];
  [intoCopy addSubview:v11];

  v19 = [v13 copy];
  return v19;
}

- (_UICAPackageView)initWithData:(id)data publishedObjectViewClassMap:(id)map
{
  dataCopy = data;
  mapCopy = map;
  v19.receiver = self;
  v19.super_class = _UICAPackageView;
  v8 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = *MEMORY[0x1E6979EF0];
    v18 = 0;
    v10 = [MEMORY[0x1E6979400] packageWithData:dataCopy type:v9 options:0 error:&v18];
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

    v14 = [_UICAPackageView _newViewHierarchyFrom:v13 publishedObjectViewClassMap:mapCopy into:v8];
    rootViews = v8->_rootViews;
    v8->_rootViews = v14;
  }

  v16 = v8;
LABEL_6:

  return v16;
}

- (_UICAPackageView)initWithContentsOfURL:(id)l publishedObjectViewClassMap:(id)map
{
  v6 = MEMORY[0x1E695DEF0];
  mapCopy = map;
  v8 = [v6 dataWithContentsOfURL:l];
  v9 = [(_UICAPackageView *)self initWithData:v8 publishedObjectViewClassMap:mapCopy];

  return v9;
}

- (id)publishedViewWithName:(id)name
{
  v3 = [(CAPackage *)self->_package publishedObjectWithName:name];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 delegate], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
  {
    delegate = [v3 delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

@end