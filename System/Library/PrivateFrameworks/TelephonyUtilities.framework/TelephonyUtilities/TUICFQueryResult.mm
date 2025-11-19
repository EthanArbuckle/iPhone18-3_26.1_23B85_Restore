@interface TUICFQueryResult
- (id)description;
@end

@implementation TUICFQueryResult

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" fromBlockList=%d", -[TUICFQueryResult isFromBlockList](self, "isFromBlockList")];
  [v3 appendFormat:@" allowCallForDestinationID=%d", -[TUICFQueryResult allowCallForDestinationID](self, "allowCallForDestinationID")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end