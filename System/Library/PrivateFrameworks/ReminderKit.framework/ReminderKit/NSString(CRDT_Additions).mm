@interface NSString(CRDT_Additions)
- (uint64_t)initWithCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSString(CRDT_Additions)

- (void)mergeWith:()CRDT_Additions
{
  if (([self isEqual:?] & 1) == 0)
  {
    [NSString(CRDT_Additions) mergeWith:];
  }
}

- (uint64_t)initWithCRCoder:()CRDT_Additions
{
  v4 = [a3 decodeStringForKey:@"self"];
  v5 = [self initWithString:v4];

  return v5;
}

- (void)mergeWith:()CRDT_Additions .cold.1()
{
  v0 = +[REMLog crdt];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![self isEqual:other]) -- Cannot merge NSString with different value.", v1, 2u);
  }
}

@end