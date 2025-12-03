@interface _TRUserNotification
- (_TRUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options error:(int *)error;
- (id)textFieldValueAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation _TRUserNotification

- (_TRUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options error:(int *)error
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _TRUserNotification;
  v9 = [(_TRUserNotification *)&v14 init];
  if (v9 && (error = 0, v10 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, options, &error, dictionaryCopy), (v9->_userNotification = v10) == 0))
  {
    if (error)
    {
      *error = error;
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (void)dealloc
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
    CFRelease(self->_userNotification);
  }

  v4.receiver = self;
  v4.super_class = _TRUserNotification;
  [(_TRUserNotification *)&v4 dealloc];
}

- (id)textFieldValueAtIndex:(unint64_t)index
{
  v3 = [(__CFString *)CFUserNotificationGetResponseValue(self->_userNotification copy:index)];

  return v3;
}

@end