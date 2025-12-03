@interface _WBBookmarkSyncDataForPositionDecoding
- (_WBBookmarkSyncDataForPositionDecoding)initWithCoder:(id)coder;
@end

@implementation _WBBookmarkSyncDataForPositionDecoding

- (_WBBookmarkSyncDataForPositionDecoding)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _WBBookmarkSyncDataForPositionDecoding;
  v5 = [(_WBBookmarkSyncDataForPositionDecoding *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Position"];
    position = v5->_position;
    v5->_position = v6;

    v8 = v5;
  }

  return v5;
}

@end