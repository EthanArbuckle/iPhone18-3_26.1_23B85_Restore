@interface BRCTrackedVersion
+ (id)trackedVersionFor:(id)for withEtagIfLoser:(id)loser kind:(int)kind;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation BRCTrackedVersion

+ (id)trackedVersionFor:(id)for withEtagIfLoser:(id)loser kind:(int)kind
{
  forCopy = for;
  loserCopy = loser;
  v9 = objc_alloc_init(BRCTrackedVersion);
  fileObjectID = v9->_fileObjectID;
  v9->_fileObjectID = forCopy;
  v11 = forCopy;

  etagIfLoser = v9->_etagIfLoser;
  v9->_etagIfLoser = loserCopy;

  v9->_kind = kind;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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