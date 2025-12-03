@interface SMCatalogMediaTypeHelper
+ (id)mediaTypeBridgeRawValueFrom:(id)from;
- (SMCatalogMediaTypeHelper)init;
@end

@implementation SMCatalogMediaTypeHelper

+ (id)mediaTypeBridgeRawValueFrom:(id)from
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x20F3030F0](v3);
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = 3;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
    v5 = 4;
LABEL_9:
    initWithInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    goto LABEL_10;
  }

  initWithInteger_ = 0;
LABEL_10:

  return initWithInteger_;
}

- (SMCatalogMediaTypeHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CatalogMediaTypeHelper();
  return [(SMCatalogMediaTypeHelper *)&v3 init];
}

@end