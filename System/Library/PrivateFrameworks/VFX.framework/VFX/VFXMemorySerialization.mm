@interface VFXMemorySerialization
+ (id)readKeyframeAnimation:(void *)a3;
+ (id)readString:(void *)a3;
+ (int)readInt32:(void *)a3;
+ (int64_t)readInt64:(void *)a3;
+ (int64_t)readInt:(void *)a3;
+ (unint64_t)readUInt64:(void *)a3;
+ (unsigned)readUInt32:(void *)a3;
+ (void)writeInt32:(int)a3 to:(void *)a4;
+ (void)writeInt64:(int64_t)a3 to:(void *)a4;
+ (void)writeInt:(int64_t)a3 to:(void *)a4;
+ (void)writeKeyframeAnimation:(id)a3 to:(void *)a4;
+ (void)writeSIMD3x3F:(__n128)a3 to:(uint64_t)a4;
+ (void)writeSIMD4x4F:(__n128)a3 to:(__n128)a4;
+ (void)writeString:(id)a3 to:(void *)a4;
+ (void)writeUInt32:(unsigned int)a3 to:(void *)a4;
+ (void)writeUInt64:(unint64_t)a3 to:(void *)a4;
- (VFXMemorySerialization)init;
@end

@implementation VFXMemorySerialization

+ (id)readString:(void *)a3
{
  sub_1AFDFCEB8();
  v3 = sub_1AFDFCEC8();

  return v3;
}

+ (void)writeString:(id)a3 to:(void *)a4
{
  v5 = sub_1AFDFCEF8();
  _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(v5, v6, a4);
}

+ (id)readKeyframeAnimation:(void *)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];

  return v3;
}

+ (void)writeKeyframeAnimation:(id)a3 to:(void *)a4
{
  v4 = a3;
  _s3VFX22VFXMemorySerializationC22writeKeyframeAnimation_2toySo010CAKeyframeF0C_SvtFZ_0(v4);
}

- (VFXMemorySerialization)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VFXMemorySerialization();
  return [(VFXMemorySerialization *)&v3 init];
}

+ (void)writeSIMD3x3F:(__n128)a3 to:(uint64_t)a4
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
}

+ (void)writeSIMD4x4F:(__n128)a3 to:(__n128)a4
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
}

+ (int64_t)readInt:(void *)a3
{

  return sub_1AF0F2358(a1, a2, a3);
}

+ (unint64_t)readUInt64:(void *)a3
{

  return sub_1AF0F2358(a1, a2, a3);
}

+ (int)readInt32:(void *)a3
{

  return sub_1AF0F230C(a1, a2, a3);
}

+ (unsigned)readUInt32:(void *)a3
{

  return sub_1AF0F230C(a1, a2, a3);
}

+ (int64_t)readInt64:(void *)a3
{

  return sub_1AF0F2358(a1, a2, a3);
}

+ (void)writeInt:(int64_t)a3 to:(void *)a4
{

  sub_1AF0F23A4(a1, a2, a3, a4);
}

+ (void)writeUInt64:(unint64_t)a3 to:(void *)a4
{

  sub_1AF0F23A4(a1, a2, a3, a4);
}

+ (void)writeUInt32:(unsigned int)a3 to:(void *)a4
{

  sub_1AF0F23F0(a1, a2, a3, a4);
}

+ (void)writeInt32:(int)a3 to:(void *)a4
{

  sub_1AF0F23F0(a1, a2, a3, a4);
}

+ (void)writeInt64:(int64_t)a3 to:(void *)a4
{

  sub_1AF0F23A4(a1, a2, a3, a4);
}

@end