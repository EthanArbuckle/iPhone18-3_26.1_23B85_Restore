@interface PXStoryAutoEditDurationConstraintSolver
- ($34B6A3E4F6D84C42DF3A29A209E596E5)constrainedDurationInfoAtIndex:(SEL)a3;
- ($34B6A3E4F6D84C42DF3A29A209E596E5)originalDurationInfoAtIndex:(SEL)a3;
- ($A35046FF140701A0BC97C4369CFAD28C)constrainedOverallDurationInfo;
- ($A35046FF140701A0BC97C4369CFAD28C)originalOverallDurationInfo;
- (BOOL)solveForMaximumDuration:(id *)a3;
- (BOOL)solveForPreferredDuration:(id *)a3;
- (PXStoryAutoEditDurationConstraintSolver)init;
- (id).cxx_construct;
- (id)diagnosticSwiftCodeForDurationUnitTestNamed:(id)a3 maximumDuration:(id *)a4;
- (id)diagnosticSwiftCodeForDurationUnitTestNamed:(id)a3 preferredDuration:(id *)a4;
- (void)addClipWithDurationInfo:(id *)a3;
@end

@implementation PXStoryAutoEditDurationConstraintSolver

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

- (id)diagnosticSwiftCodeForDurationUnitTestNamed:(id)a3 maximumDuration:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  memset(v13, 0, sizeof(v13));
  SumDurations(v13, self->_infos.__begin_, self->_infos.__end_);
  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  [v7 appendFormat:@"func test%@MaximumDurationFromTTR() throws {\n", v6];
  [v7 appendFormat:@"    let solver = PXStoryAutoEditDurationConstraintSolver()\n"];
  [v7 appendFormat:@"\n"];
  begin = self->_infos.__begin_;
  for (i = self->_infos.__end_; begin != i; begin = (begin + 72))
  {
    objc_msgSend(v7, "appendFormat:", CFSTR("    solver.addClip(with: PFStoryDurationInfoMake("));
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d), ", *begin, *(begin + 2)];
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d), ", *(begin + 3), *(begin + 8)];
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d)]\n"), *(begin + 6), *(begin + 14));
  }

  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    let originalOverall = solver.originalOverallDurationInfo\n"];
  time = v13[0];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.minimumSeconds, %f)\n", CMTimeGetSeconds(&time)];
  time = v13[1];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.preferredSeconds, %f)\n", CMTimeGetSeconds(&time)];
  time = v13[2];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.maximumSeconds, %f)\n", CMTimeGetSeconds(&time)];
  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    solver.solve(forMaximumDuration: CMTimeMake(value: %lld, timescale: %d))\n", a4->var0, a4->var1];
  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    let constrainedOverall = solver.constrainedOverallDurationInfo\n"];
  [v7 appendFormat:@"    XCTAssertLessThanOrEqual(constrainedOverall.specificDurationInfo.minimumSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTAssertLessThanOrEqual(constrainedOverall.specificDurationInfo.preferredSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTAssertEqual(constrainedOverall.specificDurationInfo.maximumSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTFail(\"Success criteria needs to be defined\""];
  [v7 appendFormat:@"}\n"];

  return v7;
}

- (id)diagnosticSwiftCodeForDurationUnitTestNamed:(id)a3 preferredDuration:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  memset(v13, 0, sizeof(v13));
  SumDurations(v13, self->_infos.__begin_, self->_infos.__end_);
  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  [v7 appendFormat:@"func test%@PreferredDurationFromTTR() throws {\n", v6];
  [v7 appendFormat:@"    let solver = PXStoryAutoEditDurationConstraintSolver()\n"];
  [v7 appendFormat:@"\n"];
  begin = self->_infos.__begin_;
  for (i = self->_infos.__end_; begin != i; begin = (begin + 72))
  {
    objc_msgSend(v7, "appendFormat:", CFSTR("    solver.addClip(with: PFStoryDurationInfoMake("));
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d), ", *begin, *(begin + 2)];
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d), ", *(begin + 3), *(begin + 8)];
    [v7 appendFormat:@"CMTimeMake(value: %lld, timescale: %d)]\n"), *(begin + 6), *(begin + 14));
  }

  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    let originalOverall = solver.originalOverallDurationInfo\n"];
  time = v13[0];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.minimumSeconds, %f)\n", CMTimeGetSeconds(&time)];
  time = v13[1];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.preferredSeconds, %f)\n", CMTimeGetSeconds(&time)];
  time = v13[2];
  [v7 appendFormat:@"    XCTAssertEqual(originalOverall.specificDurationInfo.maximumSeconds, %f)\n", CMTimeGetSeconds(&time)];
  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    solver.solve(forPreferredDuration: CMTimeMake(value: %lld, timescale: %d))\n", a4->var0, a4->var1];
  [v7 appendFormat:@"\n"];
  [v7 appendFormat:@"    let constrainedOverall = solver.constrainedOverallDurationInfo\n"];
  [v7 appendFormat:@"    XCTAssertLessThanOrEqual(constrainedOverall.specificDurationInfo.minimumSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTAssertEqual(constrainedOverall.specificDurationInfo.preferredSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTAssertGreaterThanOrEqual(constrainedOverall.specificDurationInfo.maximumSeconds, %f)\n", *&Seconds];
  [v7 appendFormat:@"    XCTFail(\"Success criteria needs to be defined\""];
  [v7 appendFormat:@"}\n"];

  return v7;
}

- ($A35046FF140701A0BC97C4369CFAD28C)constrainedOverallDurationInfo
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  SumDurations(&v7, self->_solveResults.__begin_, self->_solveResults.__end_);
  retstr->var0 = 2;
  v5 = v7;
  *&retstr->var1.var0.var3 = v8;
  v6 = v10;
  *&retstr->var1.var1.var1 = v9;
  *&retstr->var1.var2.var0 = v6;
  retstr->var1.var2.var3 = v11;
  *&retstr->var1.var0.var0 = v5;
  return result;
}

- ($A35046FF140701A0BC97C4369CFAD28C)originalOverallDurationInfo
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  SumDurations(&v7, self->_infos.__begin_, self->_infos.__end_);
  retstr->var0 = 2;
  v5 = v7;
  *&retstr->var1.var0.var3 = v8;
  v6 = v10;
  *&retstr->var1.var1.var1 = v9;
  *&retstr->var1.var2.var0 = v6;
  retstr->var1.var2.var3 = v11;
  *&retstr->var1.var0.var0 = v5;
  return result;
}

- ($34B6A3E4F6D84C42DF3A29A209E596E5)constrainedDurationInfoAtIndex:(SEL)a3
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || 0x8E38E38E38E38E39 * ((self->var1.var0 - self->var0.var3) >> 3) <= a4)
  {
    v9 = MEMORY[0x1E6960CC0];
    v10 = *MEMORY[0x1E6960CC0];
    *&retstr->var0.var0 = *MEMORY[0x1E6960CC0];
    v11 = *(v9 + 16);
    retstr->var0.var3 = v11;
    *&retstr->var1.var0 = v10;
    retstr->var1.var3 = v11;
    *&retstr->var2.var0 = v10;
    retstr->var2.var3 = v11;
  }

  else
  {
    var3 = self->var1.var3;
    if (var3 == self->var2.var0)
    {
      PXAssertGetLog();
    }

    v6 = var3 + 72 * a4;
    v7 = *(v6 + 48);
    *&retstr->var1.var1 = *(v6 + 32);
    *&retstr->var2.var0 = v7;
    retstr->var2.var3 = *(v6 + 64);
    v8 = *(v6 + 16);
    *&retstr->var0.var0 = *v6;
    *&retstr->var0.var3 = v8;
  }

  return self;
}

- ($34B6A3E4F6D84C42DF3A29A209E596E5)originalDurationInfoAtIndex:(SEL)a3
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || (var3 = self->var0.var3, 0x8E38E38E38E38E39 * ((self->var1.var0 - var3) >> 3) <= a4))
  {
    v8 = MEMORY[0x1E6960CC0];
    v9 = *MEMORY[0x1E6960CC0];
    *&retstr->var0.var0 = *MEMORY[0x1E6960CC0];
    v10 = *(v8 + 16);
    retstr->var0.var3 = v10;
    *&retstr->var1.var0 = v9;
    retstr->var1.var3 = v10;
    *&retstr->var2.var0 = v9;
    retstr->var2.var3 = v10;
  }

  else
  {
    v5 = var3 + 72 * a4;
    v6 = *(v5 + 48);
    *&retstr->var1.var1 = *(v5 + 32);
    *&retstr->var2.var0 = v6;
    retstr->var2.var3 = *(v5 + 64);
    v7 = *(v5 + 16);
    *&retstr->var0.var0 = *v5;
    *&retstr->var0.var3 = v7;
  }

  return self;
}

- (BOOL)solveForMaximumDuration:(id *)a3
{
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "StoryAutoEditDurationConstraintSolverMax", "", buf, 2u);
  }

  std::vector<PFStoryDurationInfo>::__assign_with_size[abi:ne200100]<PFStoryDurationInfo*,PFStoryDurationInfo*>(&self->_solveResults.__begin_, self->_infos.__begin_, self->_infos.__end_, 0x8E38E38E38E38E39 * ((self->_infos.__end_ - self->_infos.__begin_) >> 3));
  *buf = 0u;
  memset(v28, 0, 56);
  SumDurations(buf, self->_infos.__begin_, self->_infos.__end_);
  time1 = *&v28[32];
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    goto LABEL_14;
  }

  *&time1.value = *buf;
  time1.epoch = *v28;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    time1 = *&v28[8];
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      memset(&time1, 0, sizeof(time1));
      time2 = *&v28[32];
      rhs = *&v28[8];
      CMTimeSubtract(&time1, &time2, &rhs);
      memset(&time2, 0, sizeof(time2));
      rhs = *&v28[32];
      lhs = *a3;
      CMTimeSubtract(&time2, &rhs, &lhs);
      begin = self->_solveResults.__begin_;
      end = self->_solveResults.__end_;
      while (begin != end)
      {
        memset(&rhs, 0, sizeof(rhs));
        lhs = *(begin + 2);
        v22 = *(begin + 1);
        CMTimeSubtract(&rhs, &lhs, &v22);
        memset(&lhs, 0, sizeof(lhs));
        v22 = time2;
        time = rhs;
        v20 = time1;
        CMTimeMultiplyTimeByTimeRatio();
        time = lhs;
        CMTimeConvertScale(&v22, &time, 600, kCMTimeRoundingMethod_RoundAwayFromZero);
        lhs = v22;
        memset(&v22, 0, sizeof(v22));
        time = *(begin + 2);
        v20 = lhs;
        CMTimeSubtract(&v22, &time, &v20);
        v20 = v22;
        v19 = *(begin + 1);
        CMTimeMaximum(&time, &v20, &v19);
        *(begin + 2) = time;
        begin = (begin + 72);
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      time2 = *&v28[8];
      *&rhs.value = *buf;
      rhs.epoch = *v28;
      CMTimeSubtract(&time1, &time2, &rhs);
      memset(&time2, 0, sizeof(time2));
      rhs = *&v28[8];
      lhs = *a3;
      CMTimeSubtract(&time2, &rhs, &lhs);
      v9 = self->_solveResults.__begin_;
      v10 = self->_solveResults.__end_;
      while (v9 != v10)
      {
        memset(&rhs, 0, sizeof(rhs));
        lhs = *(v9 + 1);
        v11 = *v9;
        v22.epoch = *(v9 + 2);
        *&v22.value = v11;
        CMTimeSubtract(&rhs, &lhs, &v22);
        memset(&lhs, 0, sizeof(lhs));
        v22 = time2;
        time = rhs;
        v20 = time1;
        CMTimeMultiplyTimeByTimeRatio();
        time = lhs;
        CMTimeConvertScale(&v22, &time, 600, kCMTimeRoundingMethod_RoundAwayFromZero);
        lhs = v22;
        memset(&v22, 0, sizeof(v22));
        time = *(v9 + 1);
        v20 = lhs;
        CMTimeSubtract(&v22, &time, &v20);
        v20 = v22;
        v12 = *v9;
        v19.epoch = *(v9 + 2);
        *&v19.value = v12;
        CMTimeMaximum(&time, &v20, &v19);
        *(v9 + 24) = *&time.value;
        epoch = time.epoch;
        *(v9 + 5) = time.epoch;
        *(v9 + 3) = *(v9 + 24);
        *(v9 + 8) = epoch;
        v9 = (v9 + 72);
      }
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:
  v16 = self->_log;
  v17 = v16;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(time1.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v5, "StoryAutoEditDurationConstraintSolverMax", "", &time1, 2u);
  }

  return v8;
}

- (BOOL)solveForPreferredDuration:(id *)a3
{
  v5 = os_signpost_id_make_with_pointer(self->_log, self);
  v6 = self->_log;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "StoryAutoEditDurationConstraintSolverPreferred", "", buf, 2u);
  }

  std::vector<PFStoryDurationInfo>::__assign_with_size[abi:ne200100]<PFStoryDurationInfo*,PFStoryDurationInfo*>(&self->_solveResults.__begin_, self->_infos.__begin_, self->_infos.__end_, 0x8E38E38E38E38E39 * ((self->_infos.__end_ - self->_infos.__begin_) >> 3));
  *buf = 0u;
  memset(v47, 0, 56);
  SumDurations(buf, self->_infos.__begin_, self->_infos.__end_);
  *&time1.value = *buf;
  time1.epoch = *v47;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    goto LABEL_5;
  }

  time1 = *&v47[8];
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v35 = v5 - 1;
    v36 = v5;
    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, 0x8E38E38E38E38E39 * ((self->_solveResults.__end_ - self->_solveResults.__begin_) >> 3)}];
    time1 = *&v47[32];
    time2 = *&v47[8];
    v22 = MEMORY[0x1E6960CC0];
    while ([v10 count])
    {
      lhs = time2;
      rhs = *a3;
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        break;
      }

      memset(&lhs, 0, sizeof(lhs));
      rhs = time1;
      v41 = time2;
      CMTimeSubtract(&lhs, &rhs, &v41);
      memset(&rhs, 0, sizeof(rhs));
      v41 = *a3;
      time = time2;
      CMTimeSubtract(&rhs, &v41, &time);
      time = rhs;
      v39 = lhs;
      CMTimeMinimum(&v41, &time, &v39);
      rhs = v41;
      memset(&v41, 0, sizeof(v41));
      time = rhs;
      CMTimeMultiplyByRatio(&v41, &time, 1, [v10 count]);
      time2 = *v22;
      begin = self->_solveResults.__begin_;
      if (self->_solveResults.__end_ != begin)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if ([v10 containsIndex:v25])
          {
            memset(&time, 0, sizeof(time));
            v26 = begin + v24;
            v27 = *(begin + v24 + 48);
            v39.epoch = *(begin + v24 + 64);
            *&v39.value = v27;
            v28 = *(begin + v24 + 24);
            v38.epoch = *(begin + v24 + 40);
            *&v38.value = v28;
            CMTimeSubtract(&time, &v39, &v38);
            v39 = time;
            v38 = v41;
            if (CMTimeCompare(&v39, &v38) <= 0)
            {
              *(v26 + 24) = *(v26 + 3);
              *(v26 + 5) = *(v26 + 8);
              [v10 removeIndex:v25];
            }

            else
            {
              v29 = *(v26 + 24);
              v38.epoch = *(v26 + 5);
              *&v38.value = v29;
              v37 = v41;
              CMTimeAdd(&v39, &v38, &v37);
              v30 = *&v39.value;
              *(v26 + 5) = v39.epoch;
              *(v26 + 24) = v30;
            }
          }

          v39 = time2;
          v31 = *(begin + v24 + 24);
          v38.epoch = *(begin + v24 + 40);
          *&v38.value = v31;
          CMTimeAdd(&time, &v39, &v38);
          time2 = time;
          ++v25;
          begin = self->_solveResults.__begin_;
          v24 += 72;
        }

        while (0x8E38E38E38E38E39 * ((self->_solveResults.__end_ - begin) >> 3) > v25);
      }
    }

    goto LABEL_30;
  }

  time1 = *&v47[8];
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v35 = v5 - 1;
    v36 = v5;
    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, 0x8E38E38E38E38E39 * ((self->_solveResults.__end_ - self->_solveResults.__begin_) >> 3)}];
    time1 = *&v47[8];
    v11 = MEMORY[0x1E6960CC0];
    while ([v10 count])
    {
      time2 = time1;
      lhs = *a3;
      if (CMTimeCompare(&time2, &lhs) < 1)
      {
        break;
      }

      memset(&time2, 0, sizeof(time2));
      lhs = time1;
      rhs = *a3;
      CMTimeSubtract(&time2, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      rhs = time2;
      CMTimeMultiplyByRatio(&lhs, &rhs, 1, [v10 count]);
      time1 = *v11;
      v12 = self->_solveResults.__begin_;
      if (self->_solveResults.__end_ != v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          if ([v10 containsIndex:v14])
          {
            v15 = v12 + v13;
            memset(&rhs, 0, sizeof(rhs));
            v16 = v12 + v13;
            v17 = *(v12 + v13 + 24);
            v41.epoch = *(v12 + v13 + 40);
            *&v41.value = v17;
            v18 = *(v12 + v13);
            time.epoch = *(v12 + v13 + 16);
            *&time.value = v18;
            CMTimeSubtract(&rhs, &v41, &time);
            v41 = rhs;
            time = lhs;
            if (CMTimeCompare(&v41, &time) <= 0)
            {
              *(v16 + 24) = *v15;
              *(v16 + 5) = *(v15 + 2);
              [v10 removeIndex:v14];
            }

            else
            {
              v19 = *(v16 + 24);
              time.epoch = *(v16 + 5);
              *&time.value = v19;
              v39 = lhs;
              CMTimeSubtract(&v41, &time, &v39);
              v20 = *&v41.value;
              *(v16 + 5) = v41.epoch;
              *(v16 + 24) = v20;
            }
          }

          v41 = time1;
          v21 = *(v12 + v13 + 24);
          time.epoch = *(v12 + v13 + 40);
          *&time.value = v21;
          CMTimeAdd(&rhs, &v41, &time);
          time1 = rhs;
          ++v14;
          v12 = self->_solveResults.__begin_;
          v13 += 72;
        }

        while (v14 < 0x8E38E38E38E38E39 * ((self->_solveResults.__end_ - v12) >> 3));
      }
    }

LABEL_30:

    v9 = 1;
    v8 = v35;
    v5 = v36;
    goto LABEL_31;
  }

LABEL_5:
  v9 = 0;
LABEL_31:
  v32 = self->_log;
  v33 = v32;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    LOWORD(time1.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, OS_SIGNPOST_INTERVAL_END, v5, "StoryAutoEditDurationConstraintSolverPreferred", "", &time1, 2u);
  }

  return v9;
}

- (void)addClipWithDurationInfo:(id *)a3
{
  time1 = a3->var0;
  v5 = MEMORY[0x1E6960CC0];
  var0 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &var0) <= 0)
  {
    PXAssertGetLog();
  }

  time1 = a3->var1;
  var0 = *v5;
  if (CMTimeCompare(&time1, &var0) <= 0)
  {
    PXAssertGetLog();
  }

  time1 = a3->var1;
  var0 = a3->var0;
  if (CMTimeCompare(&time1, &var0) < 0)
  {
    PXAssertGetLog();
  }

  end = self->_infos.__end_;
  cap = self->_infos.__cap_;
  if (end >= cap)
  {
    begin = self->_infos.__begin_;
    v13 = 0x8E38E38E38E38E39 * ((end - begin) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x8E38E38E38E38E39 * ((cap - begin) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x1C71C71C71C71C7)
    {
      v16 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PFStoryDurationInfo>>(v16);
    }

    v17 = 72 * v13;
    *v17 = *&a3->var0.var0;
    v18 = *&a3->var0.var3;
    v19 = *&a3->var1.var1;
    v20 = *&a3->var2.var0;
    *(v17 + 64) = a3->var2.var3;
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    *(v17 + 16) = v18;
    v11 = (72 * v13 + 72);
    v21 = self->_infos.__begin_;
    v22 = (self->_infos.__end_ - v21);
    v23 = (v17 - v22);
    memcpy((v17 - v22), v21, v22);
    v24 = self->_infos.__begin_;
    self->_infos.__begin_ = v23;
    self->_infos.__end_ = v11;
    self->_infos.__cap_ = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *end = *&a3->var0.var0;
    v8 = *&a3->var0.var3;
    v9 = *&a3->var1.var1;
    v10 = *&a3->var2.var0;
    *(end + 8) = a3->var2.var3;
    *(end + 2) = v9;
    *(end + 3) = v10;
    *(end + 1) = v8;
    v11 = (end + 72);
  }

  self->_infos.__end_ = v11;
}

- (PXStoryAutoEditDurationConstraintSolver)init
{
  v13.receiver = self;
  v13.super_class = PXStoryAutoEditDurationConstraintSolver;
  v2 = [(PXStoryAutoEditDurationConstraintSolver *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = os_log_create(*MEMORY[0x1E69BFF60], v5);
    log = v2->_log;
    v2->_log = v6;

    p_infos = &v2->_infos;
    begin = v2->_infos.__begin_;
    if (begin)
    {
      v2->_infos.__end_ = begin;
      operator delete(begin);
      p_infos->__begin_ = 0;
      v2->_infos.__end_ = 0;
      v2->_infos.__cap_ = 0;
    }

    p_solveResults = &v2->_solveResults;
    v10 = v2->_solveResults.__begin_;
    p_infos->__begin_ = 0;
    v2->_infos.__end_ = 0;
    v2->_infos.__cap_ = 0;
    if (v10)
    {
      v2->_solveResults.__end_ = v10;
      operator delete(v10);
      p_solveResults->__begin_ = 0;
      v2->_solveResults.__end_ = 0;
      v2->_solveResults.__cap_ = 0;
    }

    p_solveResults->__begin_ = 0;
    v2->_solveResults.__end_ = 0;
    v2->_solveResults.__cap_ = 0;
  }

  return v2;
}

@end