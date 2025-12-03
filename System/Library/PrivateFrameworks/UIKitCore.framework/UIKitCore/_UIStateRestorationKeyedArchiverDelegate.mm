@interface _UIStateRestorationKeyedArchiverDelegate
+ (id)sharedDelegate;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
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

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  objectCopy = object;
  if (([object __isKindOfUIResponder] & 1) != 0 || objc_msgSend(objectCopy, "conformsToProtocol:", &unk_1F016D9B0))
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      ClassName = object_getClassName(objectCopy);
      NSLog(&cfstr_SReplacingObje.isa, "[_UIStateRestorationKeyedArchiverDelegate archiver:willEncodeObject:]", ClassName, objectCopy);
    }

    v6 = [[_UIObjectIdentifierPathProxy alloc] initWithObject:objectCopy];
    if (v6)
    {
      v7 = v6;
      _UIAddObjectToStateRestorationRoots(objectCopy);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return objectCopy;
}

@end