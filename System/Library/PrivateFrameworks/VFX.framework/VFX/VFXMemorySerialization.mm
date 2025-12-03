@interface VFXMemorySerialization
+ (id)readKeyframeAnimation:(void *)animation;
+ (id)readString:(void *)string;
+ (int)readInt32:(void *)int32;
+ (int64_t)readInt64:(void *)int64;
+ (int64_t)readInt:(void *)int;
+ (unint64_t)readUInt64:(void *)int64;
+ (unsigned)readUInt32:(void *)int32;
+ (void)writeInt32:(int)int32 to:(void *)to;
+ (void)writeInt64:(int64_t)int64 to:(void *)to;
+ (void)writeInt:(int64_t)int to:(void *)to;
+ (void)writeKeyframeAnimation:(id)animation to:(void *)to;
+ (void)writeSIMD3x3F:(__n128)f to:(uint64_t)to;
+ (void)writeSIMD4x4F:(__n128)f to:(__n128)to;
+ (void)writeString:(id)string to:(void *)to;
+ (void)writeUInt32:(unsigned int)int32 to:(void *)to;
+ (void)writeUInt64:(unint64_t)int64 to:(void *)to;
- (VFXMemorySerialization)init;
@end

@implementation VFXMemorySerialization

+ (id)readString:(void *)string
{
  sub_1AFDFCEB8();
  v3 = sub_1AFDFCEC8();

  return v3;
}

+ (void)writeString:(id)string to:(void *)to
{
  v5 = sub_1AFDFCEF8();
  _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(v5, v6, to);
}

+ (id)readKeyframeAnimation:(void *)animation
{
  initWithSerializedVFXBindingDataPointer_ = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];

  return initWithSerializedVFXBindingDataPointer_;
}

+ (void)writeKeyframeAnimation:(id)animation to:(void *)to
{
  animationCopy = animation;
  _s3VFX22VFXMemorySerializationC22writeKeyframeAnimation_2toySo010CAKeyframeF0C_SvtFZ_0(animationCopy);
}

- (VFXMemorySerialization)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VFXMemorySerialization();
  return [(VFXMemorySerialization *)&v3 init];
}

+ (void)writeSIMD3x3F:(__n128)f to:(uint64_t)to
{
  *a6 = self;
  a6[1] = a2;
  a6[2] = f;
}

+ (void)writeSIMD4x4F:(__n128)f to:(__n128)to
{
  *a7 = self;
  a7[1] = a2;
  a7[2] = f;
  a7[3] = to;
}

+ (int64_t)readInt:(void *)int
{

  return sub_1AF0F2358(self, a2, int);
}

+ (unint64_t)readUInt64:(void *)int64
{

  return sub_1AF0F2358(self, a2, int64);
}

+ (int)readInt32:(void *)int32
{

  return sub_1AF0F230C(self, a2, int32);
}

+ (unsigned)readUInt32:(void *)int32
{

  return sub_1AF0F230C(self, a2, int32);
}

+ (int64_t)readInt64:(void *)int64
{

  return sub_1AF0F2358(self, a2, int64);
}

+ (void)writeInt:(int64_t)int to:(void *)to
{

  sub_1AF0F23A4(self, a2, int, to);
}

+ (void)writeUInt64:(unint64_t)int64 to:(void *)to
{

  sub_1AF0F23A4(self, a2, int64, to);
}

+ (void)writeUInt32:(unsigned int)int32 to:(void *)to
{

  sub_1AF0F23F0(self, a2, int32, to);
}

+ (void)writeInt32:(int)int32 to:(void *)to
{

  sub_1AF0F23F0(self, a2, int32, to);
}

+ (void)writeInt64:(int64_t)int64 to:(void *)to
{

  sub_1AF0F23A4(self, a2, int64, to);
}

@end