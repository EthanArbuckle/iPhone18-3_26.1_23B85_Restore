@interface AFBBufferBuilder(TRIFBBoxedBool)
- (id)trifbCreateBoxedBoolFromBoxedBool:()TRIFBBoxedBool;
- (id)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool;
- (id)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:;
- (uint64_t)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool;
- (uint64_t)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:;
- (void)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool;
- (void)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:;
@end

@implementation AFBBufferBuilder(TRIFBBoxedBool)

- (id)trifbCreateBoxedBoolFromBoxedBool:()TRIFBBoxedBool
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5193 description:{@"Invalid parameter not satisfying: %@", @"BoxedBool"}];
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
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(v8, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v8, 1uLL);
    v10 = *(v8 + 6);
    *(v8 + 6) = v10 - 1;
    *(v10 - 1) = *v9;
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 4) - *(v8 + 6) + *(v8 + 5)];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool
{
  *a2 = &unk_28435E2B8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (id)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:
{
  v15[4] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5220 description:{@"Invalid parameter not satisfying: %@", @"block"}];
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
    v15[0] = &unk_28435E348;
    v15[1] = MEMORY[0x2318F2490](v7);
    v15[3] = v15;
    VectorOf = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedBool>(v10, a3, v15);
    std::__function::__value_func<void ()(unsigned long,BoxedBool *)>::~__value_func[abi:ne200100](v15);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:VectorOf];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 8) objectAtIndexedSubscript:v4];
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedBoolFromArray:()TRIFBBoxedBool
{
  v3 = *(a2 + 8);
  if (v3 == "Z74[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolFromArray:]E3$_5" || ((v3 & "Z74[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolFromArray:]E3$_5" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z74[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolFromArray:]E3$_5") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z74[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolFromArray:]E3$_5" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  (*(*(a1 + 8) + 16))();
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedBoolWithCount:()TRIFBBoxedBool block:
{
  v3 = *(a2 + 8);
  if (v3 == "Z80[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolWithCount:block:]E3$_6" || ((v3 & "Z80[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolWithCount:block:]E3$_6" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z80[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolWithCount:block:]E3$_6") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z80[AFBBufferBuilder(TRIFBBoxedBool) trifbCreateVectorOfBoxedBoolWithCount:block:]E3$_6" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end