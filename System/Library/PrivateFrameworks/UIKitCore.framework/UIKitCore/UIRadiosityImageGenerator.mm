@interface UIRadiosityImageGenerator
@end

@implementation UIRadiosityImageGenerator

void __44___UIRadiosityImageGenerator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_UIRadiosityImageGenerator);
  v1 = qword_1ED4A2A98;
  qword_1ED4A2A98 = v0;
}

uint64_t __63___UIRadiosityImageGenerator_imageWithImage_completionHandler___block_invoke()
{
  objc_opt_class();
  result = objc_opt_respondsToSelector();
  _MergedGlobals_1379 = result & 1;
  return result;
}

uint64_t __63___UIRadiosityImageGenerator_imageWithImage_completionHandler___block_invoke_2(uint64_t a1, CGImageRef image)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v6.n128_f64[0] = Width / *(a1 + 40);
  v7.n128_f64[0] = Height / *(a1 + 48);
  v8 = *(*(a1 + 32) + 16);

  return v8(v6, v7);
}

@end