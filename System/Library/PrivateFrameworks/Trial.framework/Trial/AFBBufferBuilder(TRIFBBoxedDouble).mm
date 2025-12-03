@interface AFBBufferBuilder(TRIFBBoxedDouble)
- (id)trifbCreateBoxedDoubleFromBoxedDouble:()TRIFBBoxedDouble;
- (id)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble;
- (id)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:;
- (uint64_t)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble;
- (uint64_t)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:;
- (void)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble;
- (void)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:;
@end

@implementation AFBBufferBuilder(TRIFBBoxedDouble)

- (id)trifbCreateBoxedDoubleFromBoxedDouble:()TRIFBBoxedDouble
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5673 description:{@"Invalid parameter not satisfying: %@", @"BoxedDouble"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    v7 = &unk_28436F9B0;
  }

  else
  {
    v8 = [self fbb];
    cppPointer = [v5 cppPointer];
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(v8, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v8, 8uLL);
    v10 = *(v8 + 6);
    *(v10 - 8) = *cppPointer;
    v10 -= 8;
    *(v8 + 6) = v10;
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 4) - v10 + *(v8 + 5)];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble
{
  *a2 = &unk_28435E4D8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (id)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:
{
  v15[4] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:5700 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    v9 = &unk_28436F9B0;
  }

  else
  {
    v10 = [self fbb];
    v15[0] = &unk_28435E568;
    v15[1] = MEMORY[0x2318F2490](v7);
    v15[3] = v15;
    VectorOf = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedDouble>(v10, a3, v15);
    std::__function::__value_func<void ()(unsigned long,BoxedDouble *)>::~__value_func[abi:ne200100](v15);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:VectorOf];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(self + 8) objectAtIndexedSubscript:v4];
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedDoubleFromArray:()TRIFBBoxedDouble
{
  v3 = *(a2 + 8);
  if (v3 == "Z78[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleFromArray:]E3$_9" || ((v3 & "Z78[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleFromArray:]E3$_9" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z78[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleFromArray:]E3$_9") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z78[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleFromArray:]E3$_9" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  (*(*(self + 8) + 16))();
  *v5 = *[v7 cppPointer];

  objc_autoreleasePoolPop(v6);
}

- (uint64_t)trifbCreateVectorOfBoxedDoubleWithCount:()TRIFBBoxedDouble block:
{
  v3 = *(a2 + 8);
  if (v3 == "Z84[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleWithCount:block:]E4$_10" || ((v3 & "Z84[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleWithCount:block:]E4$_10" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z84[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleWithCount:block:]E4$_10") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z84[AFBBufferBuilder(TRIFBBoxedDouble) trifbCreateVectorOfBoxedDoubleWithCount:block:]E4$_10" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end