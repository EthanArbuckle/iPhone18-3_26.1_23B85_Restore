@interface _UIStateRestorationKeyedArchiverDelegate
+ (id)sharedDelegate;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
@end

@implementation _UIStateRestorationKeyedArchiverDelegate

+ (id)sharedDelegate
{
  if (qword_1ED4A07B8 != -1)
  {
    dispatch_once(&qword_1ED4A07B8, &__block_literal_global_503);
  }

  return qword_1ED4A07C0;
}

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v4 = a4;
  if (([a4 __isKindOfUIResponder] & 1) != 0 || objc_msgSend(v4, "conformsToProtocol:", &unk_1F016D9B0))
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      ClassName = object_getClassName(v4);
      NSLog(&cfstr_SReplacingObje.isa, "[_UIStateRestorationKeyedArchiverDelegate archiver:willEncodeObject:]", ClassName, v4);
    }

    v6 = [[_UIObjectIdentifierPathProxy alloc] initWithObject:v4];
    if (v6)
    {
      v7 = v6;
      _UIAddObjectToStateRestorationRoots(v4);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

@end