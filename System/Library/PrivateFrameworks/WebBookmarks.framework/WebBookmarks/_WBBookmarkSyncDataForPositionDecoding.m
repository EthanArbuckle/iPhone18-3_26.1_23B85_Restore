@interface _WBBookmarkSyncDataForPositionDecoding
- (_WBBookmarkSyncDataForPositionDecoding)initWithCoder:(id)a3;
@end

@implementation _WBBookmarkSyncDataForPositionDecoding

- (_WBBookmarkSyncDataForPositionDecoding)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _WBBookmarkSyncDataForPositionDecoding;
  v5 = [(_WBBookmarkSyncDataForPositionDecoding *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Position"];
    position = v5->_position;
    v5->_position = v6;

    v8 = v5;
  }

  return v5;
}

@end