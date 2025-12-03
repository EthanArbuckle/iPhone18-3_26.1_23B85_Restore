@interface _MapOptions.Coordinator
- (void)mapOptionsControllerDidInvalidateMapOptions:(id)options;
@end

@implementation _MapOptions.Coordinator

- (void)mapOptionsControllerDidInvalidateMapOptions:(id)options
{
  optionsCopy = options;

  sub_1A47C276C(optionsCopy);
}

@end