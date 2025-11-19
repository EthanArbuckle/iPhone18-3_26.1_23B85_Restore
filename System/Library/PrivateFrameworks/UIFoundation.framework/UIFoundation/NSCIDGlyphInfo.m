@interface NSCIDGlyphInfo
+ (id)glyphInfoWithCharacterIdentifier:(unint64_t)a3 collection:(unint64_t)a4 baseString:(id)a5;
+ (void)initialize;
- (NSCIDGlyphInfo)initWithCharacterIdentifier:(unint64_t)a3 collection:(unint64_t)a4 baseString:(id)a5;
- (NSCIDGlyphInfo)initWithCoder:(id)a3;
- (id)description;
- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCIDGlyphInfo

+ (id)glyphInfoWithCharacterIdentifier:(unint64_t)a3 collection:(unint64_t)a4 baseString:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithCharacterIdentifier:a3 collection:a4 baseString:a5];

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (NSCIDGlyphInfo)initWithCharacterIdentifier:(unint64_t)a3 collection:(unint64_t)a4 baseString:(id)a5
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = NSCIDGlyphInfo;
  result = [(NSGlyphInfo *)&v8 initWithBaseString:a5];
  result->_cid = v6;
  result->_collection = a4;
  return result;
}

- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4
{
  LODWORD(v6) = [a4 isEqualToString:self->super._baseString];
  if (v6)
  {
    if (self->_collection || (cid = self->_cid, [a3 numberOfGlyphs] <= cid))
    {
      v6 = CTFontCopyGraphicsFont(a3, 0);
      if (v6)
      {
        v8 = v6;
        if (self->_collection == 255 || CGFontGetRegistryOrderingSupplement() && CFEqual(0, @"Adobe") && ((v9 = self->_collection - 1, v9 <= 4) ? (v10 = __NSOrderingTable[v9]) : (v10 = &stru_1F01AD578), CFEqual(0, v10)))
        {
          CGFontGetGlyphsForCIDs();
        }

        CFRelease(v8);
        LODWORD(v6) = 0;
      }
    }

    else
    {
      LODWORD(v6) = self->_cid;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self->_cid | (LODWORD(self->_collection) << 24);
  v6 = self->_cid | (LODWORD(self->_collection) << 24);
  v5.receiver = self;
  v5.super_class = NSCIDGlyphInfo;
  [(NSGlyphInfo *)&v5 encodeWithCoder:?];
  if ([a3 allowsKeyedCoding])
  {
    if (v4)
    {
      [a3 encodeInt32:v4 forKey:@"NSCID_RO"];
    }
  }

  else
  {
    [a3 encodeValueOfObjCType:"i" at:&v6];
  }
}

- (NSCIDGlyphInfo)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v14.receiver = self;
    v14.super_class = NSCIDGlyphInfo;
    return [(NSGlyphInfo *)&v14 initWithCoder:a3];
  }

  v6 = [a3 versionForClassName:@"NSCIDGlyphInfo"];
  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || v6 != 0)
  {
    v13.receiver = self;
    v13.super_class = NSCIDGlyphInfo;
    v5 = [(NSGlyphInfo *)&v13 initWithCoder:a3];
    v12 = 0;
    [a3 decodeValueOfObjCType:"i" at:&v12 size:4];
    v9 = v12;
    if (v12)
    {
      v5->_cid = v12;
      v5->_collection = v9 >> 24;
    }

    return v5;
  }

  v11 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v11;
}

- (id)description
{
  collection = self->_collection;
  if (!collection)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"GID 0x%04X", self->_cid, v11, v12, v13];
  }

  v4 = collection - 1;
  if (v4 <= 4)
  {
    v5 = __NSOrderingTable[v4];
  }

  else
  {
    v5 = &stru_1F01AD578;
  }

  v7 = MEMORY[0x1E696AEC0];
  cid = self->_cid;
  Length = CFStringGetLength(v5);
  v10 = @"Unspecified";
  if (Length > 0)
  {
    v10 = @"Adobe-";
  }

  return [v7 stringWithFormat:@"CID 0x%04X, collection %@%@, string %@", cid, v10, v5, self->super._baseString];
}

@end