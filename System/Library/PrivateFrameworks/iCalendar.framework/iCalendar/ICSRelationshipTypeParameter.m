@interface ICSRelationshipTypeParameter
+ (id)relationshipParameterFromCode:(unint64_t)a3;
+ (id)relationshipTypeParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSRelationshipTypeParameter

+ (id)relationshipTypeParameterFromICSString:(id)a3
{
  v3 = [ICSComponent relationshipTypeFromString:a3];

  return [ICSRelationshipTypeParameter relationshipParameterFromCode:v3];
}

+ (id)relationshipParameterFromCode:(unint64_t)a3
{
  v3 = [(ICSPredefinedValue *)[ICSRelationshipTypeParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSComponent stringFromRelationshipType:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end