@interface SBSystemApertureDebuggingUtilityBufferEntry
- (SBSystemApertureDebuggingUtilityBufferEntry)initWithQueryIteration:(unint64_t)a3 preferences:(id)a4 context:(id)a5 stackDepiction:(id)a6;
@end

@implementation SBSystemApertureDebuggingUtilityBufferEntry

- (SBSystemApertureDebuggingUtilityBufferEntry)initWithQueryIteration:(unint64_t)a3 preferences:(id)a4 context:(id)a5 stackDepiction:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBSystemApertureDebuggingUtilityBufferEntry;
  v14 = [(SBSystemApertureDebuggingUtilityBufferEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_queryIteration = a3;
    objc_storeStrong(&v14->_preferences, a4);
    objc_storeStrong(&v15->_context, a5);
    objc_storeStrong(&v15->_stackDepiction, a6);
  }

  return v15;
}

@end