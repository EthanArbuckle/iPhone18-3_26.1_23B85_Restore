@interface AFBBufferBuilder(TRIFBBoxedInt64)
- (id)trifbCreateBoxedInt64FromBoxedInt64:()TRIFBBoxedInt64;
- (id)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64;
- (id)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:;
- (uint64_t)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64;
- (uint64_t)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:;
- (void)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64;
- (void)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:;
@end

@implementation AFBBufferBuilder(TRIFBBoxedInt64)

- (id)trifbCreateBoxedInt64FromBoxedInt64:()TRIFBBoxedInt64
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5433 description:{@"Invalid parameter not satisfying: %@", @"BoxedInt64"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v6 = [a1 firstError];

  if (v6)
  {
    v7 = &unk_28436F9B0;
  }

  else
  {
    v8 = [a1 fbb];
    v9 = [v5 cppPointer];
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(v8, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v8, 8uLL);
    v10 = *(v8 + 6);
    *(v10 - 8) = *v9;
    v10 -= 8;
    *(v8 + 6) = v10;
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 4) - v10 + *(v8 + 5)];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64
{
  *a2 = &unk_28435E3C8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (id)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:
{
  v15[4] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5460 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v8 = [a1 firstError];

  if (v8)
  {
    v9 = &unk_28436F9B0;
  }

  else
  {
    v10 = [a1 fbb];
    v15[0] = &unk_28435E458;
    v15[1] = MEMORY[0x2318F2490](v7);
    v15[3] = v15;
    VectorOf = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedInt64>(v10, a3, v15);
    std::__function::__value_func<void ()(unsigned long,BoxedInt64 *)>::~__value_func[abi:ne200100](v15);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:VectorOf];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 8) objectAtIndexedSubscript:v4];
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedInt64FromArray:()TRIFBBoxedInt64
{
  v3 = *(a2 + 8);
  if (v3 == "Z76[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64FromArray:]E3$_7" || ((v3 & "Z76[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64FromArray:]E3$_7" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z76[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64FromArray:]E3$_7") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z76[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64FromArray:]E3$_7" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  (*(*(a1 + 8) + 16))();
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedInt64WithCount:()TRIFBBoxedInt64 block:
{
  v3 = *(a2 + 8);
  if (v3 == "Z82[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64WithCount:block:]E3$_8" || ((v3 & "Z82[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64WithCount:block:]E3$_8" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z82[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64WithCount:block:]E3$_8") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z82[AFBBufferBuilder(TRIFBBoxedInt64) trifbCreateVectorOfBoxedInt64WithCount:block:]E3$_8" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end