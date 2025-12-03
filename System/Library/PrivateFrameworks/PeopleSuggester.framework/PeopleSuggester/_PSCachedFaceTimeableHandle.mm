@interface _PSCachedFaceTimeableHandle
- (_PSCachedFaceTimeableHandle)initWithExpirationDate:(id)date handle:(id)handle;
@end

@implementation _PSCachedFaceTimeableHandle

- (_PSCachedFaceTimeableHandle)initWithExpirationDate:(id)date handle:(id)handle
{
  dateCopy = date;
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = _PSCachedFaceTimeableHandle;
  v9 = [(_PSCachedFaceTimeableHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expirationDate, date);
    objc_storeStrong(&v10->_handle, handle);
  }

  return v10;
}

@end