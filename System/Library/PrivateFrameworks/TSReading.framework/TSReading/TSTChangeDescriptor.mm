@interface TSTChangeDescriptor
+ (id)changeDescriptorWithType:(int)type;
+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRange:(id)range;
+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRange:(id)range strokeRange:(id)strokeRange;
+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRegion:(id)region strokeRegion:(id)strokeRegion;
+ (id)changeDescriptorWithType:(int)type cellID:(id)d strokeRange:(id)range;
+ (id)changeDescriptorWithType:(int)type cellRange:(id)range;
+ (id)changeDescriptorWithType:(int)type cellRange:(id)range strokeRange:(id)strokeRange;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion;
+ (id)changeDescriptorWithType:(int)type referenceIdentifiers:(id)identifiers;
+ (id)changeDescriptorWithType:(int)type strokeRange:(id)range;
+ (id)changeDescriptorWithType:(int)type strokeRegion:(id)region;
- (BOOL)isEqual:(id)equal;
- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)type andCellRegion:(id)region andCellID:(id)d andStrokeRegion:(id)strokeRegion andReferenceIdentifiers:(id)identifiers;
- (id)description;
- (void)dealloc;
@end

@implementation TSTChangeDescriptor

- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)type andCellRegion:(id)region andCellID:(id)d andStrokeRegion:(id)strokeRegion andReferenceIdentifiers:(id)identifiers
{
  v14.receiver = self;
  v14.super_class = TSTChangeDescriptor;
  v12 = [(TSTChangeDescriptor *)&v14 init];
  if (v12)
  {
    v12->mCellRegion = region;
    v12->mCellID = d;
    v12->mChangeDescriptor = type;
    v12->mStrokeRegion = strokeRegion;
    v12->mExpandedRegion = +[TSTCellRegion invalidRegion];
    v12->mReferenceIdentifiers = [identifiers copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTChangeDescriptor;
  [(TSTChangeDescriptor *)&v3 dealloc];
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:region andCellID:0xFFFFFFLL andStrokeRegion:+[TSTCellRegion andReferenceIdentifiers:"invalidRegion"], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:region andCellID:0xFFFFFFLL andStrokeRegion:strokeRegion andReferenceIdentifiers:0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)type strokeRegion:(id)region
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:region, 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRegion:(id)region strokeRegion:(id)strokeRegion
{
  v6 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:region andCellID:*&d andStrokeRegion:strokeRegion andReferenceIdentifiers:0];

  return v6;
}

+ (id)changeDescriptorWithType:(int)type
{
  v3 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion invalidRegion](TSTCellRegion andCellID:"invalidRegion") andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:+[TSTCellRegion invalidRegion], 0];

  return v3;
}

+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRange:(id)range
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion regionFromRange:](TSTCellRegion andCellID:"regionFromRange:" andStrokeRegion:range) andReferenceIdentifiers:*&d, +[TSTCellRegion invalidRegion], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)type cellID:(id)d cellRange:(id)range strokeRange:(id)strokeRange
{
  v6 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:[TSTCellRegion regionFromRange:?]andReferenceIdentifiers:*&d, [TSTCellRegion regionFromRange:strokeRange], 0];

  return v6;
}

+ (id)changeDescriptorWithType:(int)type cellID:(id)d strokeRange:(id)range
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:*&d andReferenceIdentifiers:[TSTCellRegion regionFromRange:range], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)type cellRange:(id)range
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion regionFromRange:](TSTCellRegion andCellID:"regionFromRange:" andStrokeRegion:range) andReferenceIdentifiers:0xFFFFFFLL, +[TSTCellRegion invalidRegion], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)type strokeRange:(id)range
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:[TSTCellRegion regionFromRange:range], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)type cellRange:(id)range strokeRange:(id)strokeRange
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:[TSTCellRegion regionFromRange:?]andReferenceIdentifiers:0xFFFFFFLL, [TSTCellRegion regionFromRange:strokeRange], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)type referenceIdentifiers:(id)identifiers
{
  identifiers = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&type andCellRegion:+[TSTCellRegion invalidRegion](TSTCellRegion andCellID:"invalidRegion") andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:+[TSTCellRegion invalidRegion], identifiers];

  return identifiers;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (!equal)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return v4;
  }

  v5 = v4;
  mChangeDescriptor = self->mChangeDescriptor;
  if (mChangeDescriptor != [v4 changeDescriptor])
  {
    goto LABEL_7;
  }

  LODWORD(v4) = -[TSTCellRegion equalsCellRegion:](self->mCellRegion, "equalsCellRegion:", [v5 cellRegion]);
  if (!v4)
  {
    return v4;
  }

  if (((*&self->mCellID ^ [v5 cellID]) & 0xFFFFFF) == 0)
  {
    LODWORD(v4) = -[TSTCellRegion equalsCellRegion:](self->mStrokeRegion, "equalsCellRegion:", [v5 strokeRegion]);
    if (v4)
    {
      mExpandedRegion = self->mExpandedRegion;
      expandedRegion = [v5 expandedRegion];

      LOBYTE(v4) = [(TSTCellRegion *)mExpandedRegion equalsCellRegion:expandedRegion];
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mChangeDescriptor = self->mChangeDescriptor;
  if (mChangeDescriptor > 0x28)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = off_279D4A7A8[mChangeDescriptor];
  }

  v8 = [v3 stringWithFormat:@"<%@:%p type:%@", v5, self, v7];
  if (![(TSTCellRegion *)self->mCellRegion isEmpty])
  {
    boundingCellRange = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", boundingCellRange.var0.var1, boundingCellRange.var0.var0];
    [v8 appendFormat:@" range:%@", objc_msgSend(v10, "stringWithFormat:", @"(%@, %@)", v11, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", boundingCellRange.var1.var0, HIWORD(*&boundingCellRange)))];
  }

  if (self->mCellID.row != 0xFFFF && (*&self->mCellID & 0xFF0000) != 0xFF0000)
  {
    [v8 appendFormat:@" cell:%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(*&self->mCellID), *&self->mCellID)];
  }

  if (![(TSTCellRegion *)self->mStrokeRegion isEmpty])
  {
    boundingCellRange2 = [(TSTCellRegion *)self->mStrokeRegion boundingCellRange];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", boundingCellRange2.var0.var1, boundingCellRange2.var0.var0];
    [v8 appendFormat:@" strokeRange:%@", objc_msgSend(v13, "stringWithFormat:", @"(%@, %@)", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", boundingCellRange2.var1.var0, HIWORD(*&boundingCellRange2)))];
  }

  [v8 appendString:@" >"];
  return v8;
}

@end