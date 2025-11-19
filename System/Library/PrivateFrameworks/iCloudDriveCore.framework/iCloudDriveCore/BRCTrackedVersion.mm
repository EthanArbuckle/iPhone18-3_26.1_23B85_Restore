@interface BRCTrackedVersion
+ (id)trackedVersionFor:(id)a3 withEtagIfLoser:(id)a4 kind:(int)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation BRCTrackedVersion

+ (id)trackedVersionFor:(id)a3 withEtagIfLoser:(id)a4 kind:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(BRCTrackedVersion);
  fileObjectID = v9->_fileObjectID;
  v9->_fileObjectID = v7;
  v11 = v7;

  etagIfLoser = v9->_etagIfLoser;
  v9->_etagIfLoser = v8;

  v9->_kind = a5;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      fileObjectID = self->_fileObjectID;
      v8 = (!(fileObjectID | v5->_fileObjectID) || [(BRFileObjectID *)fileObjectID isEqual:?]) && ((etagIfLoser = self->_etagIfLoser, !(etagIfLoser | v5->_etagIfLoser)) || [(NSString *)etagIfLoser isEqual:?]) && self->_kind == v5->_kind;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(BRFileObjectID *)self->_fileObjectID hash];
  v4 = [(NSString *)self->_etagIfLoser hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_kind];
  v6 = [v5 hash];

  return v4 ^ v6;
}

@end