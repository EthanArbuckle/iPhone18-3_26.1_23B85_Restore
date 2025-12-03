@interface UIViewController(PrototypeTools_PhotosUICore)
+ (_PXConsoleViewController)px_viewControllerWithContinuousOutputProducer:()PrototypeTools_PhotosUICore;
+ (id)px_viewControllerWithAsynchronousOutputProducer:()PrototypeTools_PhotosUICore;
+ (id)px_viewControllerWithOutput:()PrototypeTools_PhotosUICore;
+ (id)px_viewControllerWithSettings:()PrototypeTools_PhotosUICore;
@end

@implementation UIViewController(PrototypeTools_PhotosUICore)

+ (_PXConsoleViewController)px_viewControllerWithContinuousOutputProducer:()PrototypeTools_PhotosUICore
{
  v3 = a3;
  v4 = objc_alloc_init(_PXConsoleViewController);
  date = [MEMORY[0x1E695DF00] date];
  objc_initWeak(&location, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithContinuousOutputProducer___block_invoke;
  v11[3] = &unk_1E774B4A8;
  objc_copyWeak(&v12, &location);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithContinuousOutputProducer___block_invoke_2;
  v8[3] = &unk_1E77323C8;
  objc_copyWeak(&v10, &location);
  v6 = date;
  v9 = v6;
  (*(v3 + 2))(v3, v11, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v4;
}

+ (id)px_viewControllerWithAsynchronousOutputProducer:()PrototypeTools_PhotosUICore
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithAsynchronousOutputProducer___block_invoke;
  v8[3] = &unk_1E77323A0;
  v9 = v4;
  v5 = v4;
  v6 = [self px_viewControllerWithContinuousOutputProducer:v8];

  return v6;
}

+ (id)px_viewControllerWithOutput:()PrototypeTools_PhotosUICore
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__UIViewController_PrototypeTools_PhotosUICore__px_viewControllerWithOutput___block_invoke;
  v8[3] = &unk_1E77322E0;
  v9 = v4;
  v5 = v4;
  v6 = [self px_viewControllerWithAsynchronousOutputProducer:v8];

  return v6;
}

+ (id)px_viewControllerWithSettings:()PrototypeTools_PhotosUICore
{
  v3 = MEMORY[0x1E69C66C0];
  v4 = a3;
  v5 = [[v3 alloc] initWithRootSettings:v4];

  topViewController = [v5 topViewController];

  return topViewController;
}

@end