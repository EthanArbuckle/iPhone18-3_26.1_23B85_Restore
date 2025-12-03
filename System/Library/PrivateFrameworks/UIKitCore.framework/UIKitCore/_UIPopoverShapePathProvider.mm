@interface _UIPopoverShapePathProvider
+ (id)defaultProviderForIdiom:(int64_t)idiom;
- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)parameters;
@end

@implementation _UIPopoverShapePathProvider

+ (id)defaultProviderForIdiom:(int64_t)idiom
{
  v3 = objc_opt_new();

  return v3;
}

- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)parameters
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPopoverShapePathProvider.m" lineNumber:32 description:@"Calling -generatePopoverPathForParameters: on instance abstract class _UIPopoverShapePathProvider."];

  return 0;
}

@end