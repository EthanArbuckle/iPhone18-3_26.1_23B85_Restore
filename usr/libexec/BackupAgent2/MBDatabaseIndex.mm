@interface MBDatabaseIndex
+ (id)databaseIndex;
+ (unint64_t)flagsForMode:(unsigned __int16)mode;
- (BOOL)containsFileID:(id)d;
- (MBDatabaseIndex)init;
- (NSString)description;
- (id)setFlags:(unint64_t)flags forFileID:(id)d;
- (int64_t)offsetForFileID:(id)d;
- (unint64_t)flagsForFileID:(id)d;
- (void)setOffset:(unint64_t)offset flags:(unint64_t)flags forFileID:(id)d;
@end

@implementation MBDatabaseIndex

+ (unint64_t)flagsForMode:(unsigned __int16)mode
{
  v3 = mode & 0xF000;
  v4 = 1;
  v5 = 2;
  if (v3 != 0x4000)
  {
    v5 = 0;
  }

  if (v3 != 0x8000)
  {
    v4 = v5;
  }

  if (v3 == 40960)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

+ (id)databaseIndex
{
  v2 = objc_alloc_init(MBDatabaseIndex);

  return v2;
}

- (MBDatabaseIndex)init
{
  v6.receiver = self;
  v6.super_class = MBDatabaseIndex;
  v2 = [(MBDatabaseIndex *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:0];
    entriesByFileID = v2->_entriesByFileID;
    v2->_entriesByFileID = v3;
  }

  return v2;
}

- (BOOL)containsFileID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:d];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)offsetForFileID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:d];
  v4 = v3;
  if (v3)
  {
    offset = [v3 offset];
  }

  else
  {
    offset = -1;
  }

  return offset;
}

- (unint64_t)flagsForFileID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:d];
  v4 = v3;
  if (v3)
  {
    flags = [v3 flags];
  }

  else
  {
    flags = 0;
  }

  return flags;
}

- (id)setFlags:(unint64_t)flags forFileID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:d];
  [v5 setFlags:{objc_msgSend(v5, "flags") | flags}];

  return 0;
}

- (void)setOffset:(unint64_t)offset flags:(unint64_t)flags forFileID:(id)d
{
  dCopy = d;
  if ([(MBDatabaseIndex *)self offsetForFileID:?]!= -1)
  {
    sub_10009E244(a2, self, dCopy);
  }

  v9 = [[MBDatabaseIndexEntry alloc] initWithOffset:offset flags:flags];
  [(NSMutableDictionary *)self->_entriesByFileID setObject:v9 forKeyedSubscript:dCopy];
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(MBDatabaseIndex *)self version];
  return [NSString stringWithFormat:@"<%@: version=%0.1f, count=%d>", v3, v4, [(MBDatabaseIndex *)self count]];
}

@end