@interface SBSystemApertureDebuggingUtilityBufferEntry
- (SBSystemApertureDebuggingUtilityBufferEntry)initWithQueryIteration:(unint64_t)iteration preferences:(id)preferences context:(id)context stackDepiction:(id)depiction;
@end

@implementation SBSystemApertureDebuggingUtilityBufferEntry

- (SBSystemApertureDebuggingUtilityBufferEntry)initWithQueryIteration:(unint64_t)iteration preferences:(id)preferences context:(id)context stackDepiction:(id)depiction
{
  preferencesCopy = preferences;
  contextCopy = context;
  depictionCopy = depiction;
  v17.receiver = self;
  v17.super_class = SBSystemApertureDebuggingUtilityBufferEntry;
  v14 = [(SBSystemApertureDebuggingUtilityBufferEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_queryIteration = iteration;
    objc_storeStrong(&v14->_preferences, preferences);
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v15->_stackDepiction, depiction);
  }

  return v15;
}

@end