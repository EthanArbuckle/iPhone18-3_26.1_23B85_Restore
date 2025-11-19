@interface TPBodyRep
- (id)storage;
@end

@implementation TPBodyRep

- (id)storage
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_bodyStorage(v6, v7, v8, v9, v10, v11);

  return v12;
}

@end