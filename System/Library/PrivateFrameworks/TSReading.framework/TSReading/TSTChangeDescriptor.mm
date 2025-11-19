@interface TSTChangeDescriptor
+ (id)changeDescriptorWithType:(int)a3;
+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRange:(id)a5;
+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRange:(id)a5 strokeRange:(id)a6;
+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRegion:(id)a5 strokeRegion:(id)a6;
+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 strokeRange:(id)a5;
+ (id)changeDescriptorWithType:(int)a3 cellRange:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 cellRange:(id)a4 strokeRange:(id)a5;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5;
+ (id)changeDescriptorWithType:(int)a3 referenceIdentifiers:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 strokeRange:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 strokeRegion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)a3 andCellRegion:(id)a4 andCellID:(id)a5 andStrokeRegion:(id)a6 andReferenceIdentifiers:(id)a7;
- (id)description;
- (void)dealloc;
@end

@implementation TSTChangeDescriptor

- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)a3 andCellRegion:(id)a4 andCellID:(id)a5 andStrokeRegion:(id)a6 andReferenceIdentifiers:(id)a7
{
  v14.receiver = self;
  v14.super_class = TSTChangeDescriptor;
  v12 = [(TSTChangeDescriptor *)&v14 init];
  if (v12)
  {
    v12->mCellRegion = a4;
    v12->mCellID = a5;
    v12->mChangeDescriptor = a3;
    v12->mStrokeRegion = a6;
    v12->mExpandedRegion = +[TSTCellRegion invalidRegion];
    v12->mReferenceIdentifiers = [a7 copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTChangeDescriptor;
  [(TSTChangeDescriptor *)&v3 dealloc];
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:a4 andCellID:0xFFFFFFLL andStrokeRegion:+[TSTCellRegion andReferenceIdentifiers:"invalidRegion"], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:a4 andCellID:0xFFFFFFLL andStrokeRegion:a5 andReferenceIdentifiers:0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)a3 strokeRegion:(id)a4
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:a4, 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRegion:(id)a5 strokeRegion:(id)a6
{
  v6 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:a5 andCellID:*&a4 andStrokeRegion:a6 andReferenceIdentifiers:0];

  return v6;
}

+ (id)changeDescriptorWithType:(int)a3
{
  v3 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion invalidRegion](TSTCellRegion andCellID:"invalidRegion") andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:+[TSTCellRegion invalidRegion], 0];

  return v3;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRange:(id)a5
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion regionFromRange:](TSTCellRegion andCellID:"regionFromRange:" andStrokeRegion:a5) andReferenceIdentifiers:*&a4, +[TSTCellRegion invalidRegion], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 cellRange:(id)a5 strokeRange:(id)a6
{
  v6 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:[TSTCellRegion regionFromRange:?]andReferenceIdentifiers:*&a4, [TSTCellRegion regionFromRange:a6], 0];

  return v6;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(id)a4 strokeRange:(id)a5
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:*&a4 andReferenceIdentifiers:[TSTCellRegion regionFromRange:a5], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)a3 cellRange:(id)a4
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion regionFromRange:](TSTCellRegion andCellID:"regionFromRange:" andStrokeRegion:a4) andReferenceIdentifiers:0xFFFFFFLL, +[TSTCellRegion invalidRegion], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)a3 strokeRange:(id)a4
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion andCellID:"invalidRegion"]andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:[TSTCellRegion regionFromRange:a4], 0];

  return v4;
}

+ (id)changeDescriptorWithType:(int)a3 cellRange:(id)a4 strokeRange:(id)a5
{
  v5 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:[TSTCellRegion regionFromRange:?]andReferenceIdentifiers:0xFFFFFFLL, [TSTCellRegion regionFromRange:a5], 0];

  return v5;
}

+ (id)changeDescriptorWithType:(int)a3 referenceIdentifiers:(id)a4
{
  v4 = [[TSTChangeDescriptor alloc] initWithChangeDescriptorType:*&a3 andCellRegion:+[TSTCellRegion invalidRegion](TSTCellRegion andCellID:"invalidRegion") andStrokeRegion:0xFFFFFFLL andReferenceIdentifiers:+[TSTCellRegion invalidRegion], a4];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (!a3)
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
      v8 = [v5 expandedRegion];

      LOBYTE(v4) = [(TSTCellRegion *)mExpandedRegion equalsCellRegion:v8];
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
    v9 = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", v9.var0.var1, v9.var0.var0];
    [v8 appendFormat:@" range:%@", objc_msgSend(v10, "stringWithFormat:", @"(%@, %@)", v11, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", v9.var1.var0, HIWORD(*&v9)))];
  }

  if (self->mCellID.row != 0xFFFF && (*&self->mCellID & 0xFF0000) != 0xFF0000)
  {
    [v8 appendFormat:@" cell:%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(*&self->mCellID), *&self->mCellID)];
  }

  if (![(TSTCellRegion *)self->mStrokeRegion isEmpty])
  {
    v12 = [(TSTCellRegion *)self->mStrokeRegion boundingCellRange];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", v12.var0.var1, v12.var0.var0];
    [v8 appendFormat:@" strokeRange:%@", objc_msgSend(v13, "stringWithFormat:", @"(%@, %@)", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", v12.var1.var0, HIWORD(*&v12)))];
  }

  [v8 appendString:@" >"];
  return v8;
}

@end