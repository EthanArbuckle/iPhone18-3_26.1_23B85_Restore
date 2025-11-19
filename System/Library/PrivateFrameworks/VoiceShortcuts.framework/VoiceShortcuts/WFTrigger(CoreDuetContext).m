@interface WFTrigger(CoreDuetContext)
- (void)contextStoreKeyPathForCurrentState;
- (void)contextStorePredicate;
@end

@implementation WFTrigger(CoreDuetContext)

- (void)contextStorePredicate
{
  v0 = getWFTriggersLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 136315394;
    v4 = "[WFTrigger(CoreDuetContext) contextStorePredicate]";
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_23103C000, v0, OS_LOG_TYPE_ERROR, "%s Subclass MUST override, but %@ didn't", &v3, 0x16u);
  }

  __break(1u);
}

- (void)contextStoreKeyPathForCurrentState
{
  v0 = getWFTriggersLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 136315394;
    v4 = "[WFTrigger(CoreDuetContext) contextStoreKeyPathForCurrentState]";
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_23103C000, v0, OS_LOG_TYPE_ERROR, "%s Subclass MUST override, but %@ didn't", &v3, 0x16u);
  }

  __break(1u);
}

@end