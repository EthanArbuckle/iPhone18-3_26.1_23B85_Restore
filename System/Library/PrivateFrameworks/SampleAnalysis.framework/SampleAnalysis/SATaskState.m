@interface SATaskState
+ (SATaskState)stateWithPAStyleTaskPrivateData:(void *)a3 donatingUniquePids:;
+ (SATaskState)stateWithStartTimestamp:(id)a3 endTimestamp:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6;
+ (SATaskStateInTransition)stateWithKCDataTransitioningTask:(uint64_t)a3 terminatedThreadsInstructionCycles:(uint64_t)a4 memoryStatus:(uint64_t)a5 machTimebase:(uint64_t)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (id)stateWithKCDataDeltaTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:;
+ (id)stateWithKCDataTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:;
+ (id)stateWithStackshotTaskV1:(unint64_t)a3 machTimebase:(unsigned int)a4 hwPageSize:(uint64_t)a5 startTimestamp:(uint64_t)a6 endTimestamp:(uint64_t)a7 startSampleIndex:(uint64_t)a8 endSampleIndex:;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SATaskState)initWithStartTimestamp:(id)a3 endTimestamp:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6;
- (id)debugDescriptionWithTask:(uint64_t)a1;
- (uint64_t)correspondsToKCDataDeltaTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:;
- (uint64_t)correspondsToKCDataTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:;
- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)a3 end:(unint64_t)a4;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)correspondsToKCDataTransitioningTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(uint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SATaskState

- (id)debugDescriptionWithTask:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [a2 debugDescription];
    v8 = *(a1 + 64);
    if (v4 == v5)
    {
      v10 = [*(a1 + 48) debugDescription];
      v12 = [v6 initWithFormat:@"%@ @ sample index %lu\n%@", v7, v8, v10];
    }

    else
    {
      v9 = *(a1 + 72);
      v10 = [*(a1 + 48) debugDescription];
      v11 = [*(a1 + 56) debugDescription];
      v12 = [v6 initWithFormat:@"%@ @ sample indexes %lu-%lu\nstart:%@\n  end:%@", v7, v8, v9, v10, v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)debugDescription
{
  startTimestamp = self->_startTimestamp;
  endTimestamp = self->_endTimestamp;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  startSampleIndex = self->_startSampleIndex;
  if (startTimestamp == endTimestamp)
  {
    v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
    v10 = [v5 initWithFormat:@"Task state @ sample index %lu\n%@", startSampleIndex, v8];
  }

  else
  {
    endSampleIndex = self->_endSampleIndex;
    v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
    v9 = [(SATimestamp *)self->_endTimestamp debugDescription];
    v10 = [v5 initWithFormat:@"Task state @ sample indexes %lu-%lu\nstart:%@\n  end:%@", startSampleIndex, endSampleIndex, v8, v9];
  }

  return v10;
}

- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)a3 end:(unint64_t)a4
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0x7FFFFFFFFFFFFFFFLL && a3 > a4)
  {
    v17 = *__error();
    p_super = _sa_logt();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v34 = a3;
      v35 = 2048;
      v36 = a4;
      _os_log_error_impl(&dword_1E0E2F000, p_super, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu > endSampleIndexCap %lu", buf, 0x16u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(2413, "startSampleIndexCap %lu > endSampleIndexCap %lu", v18, v19, v20, v21, v22, v23, a3);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  p_super = &self->super;
  startSampleIndex = self->_startSampleIndex;
  endSampleIndex = self->_endSampleIndex;
  if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = endSampleIndex == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  if (endSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_28:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      isa = p_super[8].isa;
      *buf = 134217984;
      v34 = isa;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "_startSampleIndex %lu, end NSNotFound", buf, 0xCu);
    }

    *__error() = v24;
    _SASetCrashLogMessage(2416, "_startSampleIndex %lu, end NSNotFound", v27, v28, v29, v30, v31, v32, p_super[8].isa);
    _os_crash();
    __break(1u);
  }

  if (endSampleIndex >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = self->_endSampleIndex;
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    endSampleIndex = v12;
  }

  if (startSampleIndex <= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = self->_startSampleIndex;
  }

  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    startSampleIndex = v13;
  }

  v14 = endSampleIndex >= startSampleIndex;
  v15 = endSampleIndex - startSampleIndex;
  if (v14)
  {
    result = v15 + 1;
  }

  else
  {
    result = 0;
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)correspondsToKCDataTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:
{
  if (result)
  {
    v7 = result;
    if (*(result + 8) != *(a2 + 56) || *(result + 80) != *(a2 + 40) || *(result + 12) != *(a2 + 60) || *(result + 16) != *(a2 + 64) || *(result + 20) != *(a2 + 68) || *(result + 128) != *(a2 + 8) || *(result + 24) != *(a2 + 80))
    {
      return 0;
    }

    v11 = *(result + 88);
    if (HIDWORD(a5) && a5)
    {
      if (a5 == HIDWORD(a5))
      {
        if (v11 != *(a2 + 16))
        {
          return 0;
        }

        v12 = *(a2 + 24);
      }

      else
      {
        if (v11 != __udivti3())
        {
          return 0;
        }

        v13 = *(a2 + 24);
        v12 = __udivti3();
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v12 = 0;
    }

    if (*(v7 + 96) == v12)
    {
      if (a3)
      {
        if (*a3 != *(v7 + 104) || a3[1] != *(v7 + 112))
        {
          return 0;
        }
      }

      else if (*(v7 + 104) || *(v7 + 112))
      {
        return 0;
      }

      v14 = *(v7 + 120);
      if (a6)
      {
        if (!v14)
        {
          return 0;
        }

        result = [a6 isEqualToSet:?];
        if (!result)
        {
          return result;
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (a4)
      {
        if (*a4 == *(v7 + 28) && a4[1] == *(v7 + 32) && a4[2] == *(v7 + 36))
        {
          return a4[3] == *(v7 + 40);
        }
      }

      else if (*(v7 + 28) == 0x80000000 && *(v7 + 32) == 0x80000000 && *(v7 + 36) == 0x80000000)
      {
        return *(v7 + 40) == 0x80000000;
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)correspondsToKCDataDeltaTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:
{
  if (result)
  {
    v7 = result;
    if (*(result + 8) != *(a2 + 48) || *(result + 80) != *(a2 + 32) || *(result + 12) != *(a2 + 52) || *(result + 16) != *(a2 + 56) || *(result + 20) != *(a2 + 60) || *(result + 128) != *(a2 + 8) || *(result + 24) != *(a2 + 72))
    {
      return 0;
    }

    v11 = *(result + 88);
    if (HIDWORD(a5) && a5)
    {
      if (a5 == HIDWORD(a5))
      {
        if (v11 != *(a2 + 16))
        {
          return 0;
        }

        v12 = *(a2 + 24);
      }

      else
      {
        if (v11 != __udivti3())
        {
          return 0;
        }

        v13 = *(a2 + 24);
        v12 = __udivti3();
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v12 = 0;
    }

    if (*(v7 + 96) == v12)
    {
      if (a3)
      {
        if (*a3 != *(v7 + 104) || a3[1] != *(v7 + 112))
        {
          return 0;
        }
      }

      else if (*(v7 + 104) || *(v7 + 112))
      {
        return 0;
      }

      v14 = *(v7 + 120);
      if (a6)
      {
        if (!v14)
        {
          return 0;
        }

        result = [a6 isEqualToSet:?];
        if (!result)
        {
          return result;
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (a4)
      {
        if (*a4 == *(v7 + 28) && a4[1] == *(v7 + 32) && a4[2] == *(v7 + 36))
        {
          v15 = a4[3];
          v16 = *(v7 + 40);
          return v15 == v16;
        }
      }

      else if (*(v7 + 32) == 0x80000000 && *(v7 + 36) == 0x80000000)
      {
        v15 = *(v7 + 40);
        v16 = 0x80000000;
        return v15 == v16;
      }
    }

    return 0;
  }

  return result;
}

- (void)correspondsToKCDataTransitioningTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(uint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:
{
  if (result)
  {
    v6 = result;
    if (result[16] != *(a2 + 8) || [result transitionType] != *(a2 + 16))
    {
      return 0;
    }

    if (a3)
    {
      if (*a3 != v6[13] || a3[1] != v6[14])
      {
        return 0;
      }
    }

    else if (v6[13] || v6[14])
    {
      return 0;
    }

    v10 = v6[15];
    if (a6)
    {
      if (!v10)
      {
        return 0;
      }

      result = [a6 isEqualToSet:?];
      if (!result)
      {
        return result;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (a4)
    {
      if (*a4 == *(v6 + 7) && a4[1] == *(v6 + 8) && a4[2] == *(v6 + 9))
      {
        return (a4[3] == *(v6 + 10));
      }
    }

    else if (*(v6 + 7) == 0x80000000 && *(v6 + 8) == 0x80000000 && *(v6 + 9) == 0x80000000)
    {
      return (*(v6 + 10) == 0x80000000);
    }

    return 0;
  }

  return result;
}

+ (id)stateWithKCDataTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:
{
  objc_opt_self();
  v17 = [SATaskState alloc];
  if (v17)
  {
    v18 = [(SATaskState *)v17 initWithStartTimestamp:a7 endTimestamp:a8 startSampleIndex:a9 endSampleIndex:a10];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong((v18 + 120), a6);
      *(v19 + 8) = *(a2 + 56);
      *(v19 + 80) = *(a2 + 40);
      *(v19 + 12) = *(a2 + 60);
      *(v19 + 16) = *(a2 + 64);
      *(v19 + 20) = *(a2 + 68);
      *(v19 + 128) = *(a2 + 8);
      *(v19 + 24) = *(a2 + 80);
      if (HIDWORD(a5) && a5)
      {
        if (a5 == HIDWORD(a5))
        {
          *(v19 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v19 + 88) = __udivti3();
          v21 = *(a2 + 24);
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v19 + 88) = 0;
      }

      *(v19 + 96) = v20;
      if (a3)
      {
        *(v19 + 104) = *a3;
        *(v19 + 112) = a3[1];
      }

      if (a4)
      {
        *(v19 + 28) = *a4;
        *(v19 + 32) = a4[1];
        *(v19 + 36) = a4[2];
        v22 = a4[3];
      }

      else
      {
        *(v19 + 28) = 0x8000000080000000;
        v22 = 0x80000000;
        *(v19 + 36) = 0x80000000;
      }

      *(v19 + 40) = v22;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)stateWithKCDataDeltaTask:(void *)a3 terminatedThreadsInstructionCycles:(_DWORD *)a4 memoryStatus:(unint64_t)a5 machTimebase:(void *)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:
{
  objc_opt_self();
  v17 = [SATaskState alloc];
  if (v17)
  {
    v18 = [(SATaskState *)v17 initWithStartTimestamp:a7 endTimestamp:a8 startSampleIndex:a9 endSampleIndex:a10];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong((v18 + 120), a6);
      *(v19 + 8) = *(a2 + 48);
      *(v19 + 80) = *(a2 + 32);
      *(v19 + 12) = *(a2 + 52);
      *(v19 + 16) = *(a2 + 56);
      *(v19 + 20) = *(a2 + 60);
      *(v19 + 128) = *(a2 + 8);
      *(v19 + 24) = *(a2 + 72);
      if (HIDWORD(a5) && a5)
      {
        if (a5 == HIDWORD(a5))
        {
          *(v19 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v19 + 88) = __udivti3();
          v21 = *(a2 + 24);
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v19 + 88) = 0;
      }

      *(v19 + 96) = v20;
      if (a3)
      {
        *(v19 + 104) = *a3;
        *(v19 + 112) = a3[1];
      }

      if (a4)
      {
        *(v19 + 28) = *a4;
        *(v19 + 32) = a4[1];
        *(v19 + 36) = a4[2];
        v22 = a4[3];
      }

      else
      {
        *(v19 + 28) = 0x8000000080000000;
        v22 = 0x80000000;
        *(v19 + 36) = 0x80000000;
      }

      *(v19 + 40) = v22;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (SATaskStateInTransition)stateWithKCDataTransitioningTask:(uint64_t)a3 terminatedThreadsInstructionCycles:(uint64_t)a4 memoryStatus:(uint64_t)a5 machTimebase:(uint64_t)a6 donatingUniquePids:(uint64_t)a7 startTimestamp:(uint64_t)a8 endTimestamp:(uint64_t)a9 startSampleIndex:(uint64_t)a10 endSampleIndex:
{
  objc_opt_self();
  v17 = [[SATaskStateInTransition alloc] initWithKCDataTransitioningTask:a2 andTerminatedThreadsInstructionCycles:a3 memoryStatus:a4 machTimebase:a5 andDonatingUniquePids:a6 startTimestamp:a7 endTimestamp:a8 startSampleIndex:a9 endSampleIndex:a10];

  return v17;
}

+ (id)stateWithStackshotTaskV1:(unint64_t)a3 machTimebase:(unsigned int)a4 hwPageSize:(uint64_t)a5 startTimestamp:(uint64_t)a6 endTimestamp:(uint64_t)a7 startSampleIndex:(uint64_t)a8 endSampleIndex:
{
  objc_opt_self();
  v15 = [SATaskState alloc];
  if (v15)
  {
    v16 = [(SATaskState *)v15 initWithStartTimestamp:a5 endTimestamp:a6 startSampleIndex:a7 endSampleIndex:a8];
    v17 = v16;
    if (v16)
    {
      *(v16 + 8) = *(a2 + 60);
      v18 = *(a2 + 68);
      *(v16 + 80) = *(a2 + 64) * a4;
      *(v16 + 12) = v18;
      *(v16 + 16) = *(a2 + 72);
      *(v16 + 20) = *(a2 + 76);
      v19 = *(a2 + 129);
      if (!v19)
      {
        v19 = *(a2 + 80);
      }

      *(v16 + 128) = v19;
      *(v16 + 24) = *(a2 + 125);
      if (HIDWORD(a3) && a3)
      {
        if (a3 == HIDWORD(a3))
        {
          *(v16 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v16 + 88) = __udivti3();
          v21 = *(a2 + 24);
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v17 + 88) = 0;
      }

      *(v17 + 96) = v20;
      *&v22 = 0x8000000080000000;
      *(&v22 + 1) = 0x8000000080000000;
      *(v17 + 28) = v22;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SATaskState)initWithStartTimestamp:(id)a3 endTimestamp:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = SATaskState;
  v10 = [(SATaskState *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startTimestamp, a3);
    objc_storeStrong(&v11->_endTimestamp, a4);
    v11->_startSampleIndex = a5;
    v11->_endSampleIndex = a6;
    *&v12 = 0x8000000080000000;
    *(&v12 + 1) = 0x8000000080000000;
    *&v11->_memoryLimitMB = v12;
  }

  return v11;
}

+ (SATaskState)stateWithStartTimestamp:(id)a3 endTimestamp:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6
{
  v6 = [[a1 alloc] initWithStartTimestamp:a3 endTimestamp:a4 startSampleIndex:a5 endSampleIndex:a6];

  return v6;
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  if ([(SATaskState *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(SATaskState *)self debugDescription];
      *buf = 136315650;
      v74 = [v22 UTF8String];
      v75 = 2048;
      *v76 = [(SATaskState *)self sizeInBytesForSerializedVersion];
      *&v76[8] = 2048;
      *&v76[10] = a4;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v20;
    v23 = [(SATaskState *)self debugDescription];
    v24 = [v23 UTF8String];
    [(SATaskState *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(3570, "%s: size %lu != buffer length %lu", v25, v26, v27, v28, v29, v30, v24);

    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  *&a3->var0 = 769;
  *(&a3->var3 + 2) = *&self->_startSampleIndex;
  *(&a3->var5 + 2) = self->_suspendCount;
  *(&a3->var5 + 6) = self->_taskSizeInBytes;
  *(&a3->var6 + 6) = self->_faults;
  *(&a3->var7 + 2) = self->_pageins;
  *(&a3->var7 + 6) = self->_cowFaults;
  *(&a3->var8 + 2) = self->_latencyQos;
  *(&a3->var9 + 2) = self->_terminatedThreadsUserTimeInNs;
  *(&a3->var11 + 2) = self->_terminatedThreadsSystemTimeInNs;
  *(&a3->var12 + 6) = self->_terminatedThreadsInstructions;
  *(&a3->var13 + 6) = self->_terminatedThreadsCycles;
  *(&a3->var14 + 7) = self->_ssFlags;
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, a5);
  *(&a3->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, a5);
  if ([(NSSet *)self->_donatingUniquePids count]>= 0xFF)
  {
LABEL_18:
    v13 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [(SATaskState *)self debugDescription];
      v33 = [v32 UTF8String];
      v34 = [(NSSet *)self->_donatingUniquePids count];
      *buf = 136315394;
      v74 = v33;
      v75 = 2048;
      *v76 = v34;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "%s: %lu donatingUniquePids", buf, 0x16u);
    }

    *__error() = v13;
    v35 = [(SATaskState *)self debugDescription];
    v36 = [v35 UTF8String];
    [(NSSet *)self->_donatingUniquePids count];
    _SASetCrashLogMessage(3592, "%s: %lu donatingUniquePids", v37, v38, v39, v40, v41, v42, v36);

    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v9 = &a3->var15 + 7;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = self->_donatingUniquePids;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    LOBYTE(v13) = 0;
    v14 = *v70;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(v10);
        }

        *&v9[8 * v13] = [*(*(&v69 + 1) + 8 * i) unsignedLongLongValue];
        LOBYTE(v13) = v13 + 1;
      }

      v12 = [(NSSet *)v10 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if ([(NSSet *)self->_donatingUniquePids count]!= v13)
  {
LABEL_21:
    v17 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [(SATaskState *)self debugDescription];
      v45 = [v44 UTF8String];
      v46 = [(NSSet *)self->_donatingUniquePids count];
      *buf = 136315650;
      v74 = v45;
      v75 = 2048;
      *v76 = v46;
      *&v76[8] = 1024;
      *&v76[10] = v13;
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s: %lu donatingUniquePids, but %u serialized", buf, 0x1Cu);
    }

    *__error() = v17;
    a3 = [(SATaskState *)self debugDescription];
    v47 = [($2089E77EEE4A1EB652AD555C69D4CCDC *)a3 UTF8String];
    [(NSSet *)self->_donatingUniquePids count];
    _SASetCrashLogMessage(3599, "%s: %lu donatingUniquePids, but %u serialized", v48, v49, v50, v51, v52, v53, v47);

    _os_crash();
    __break(1u);
LABEL_24:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [(SATaskState *)self debugDescription];
      v57 = [v56 UTF8String];
      v58 = BYTE6(a3->var14);
      v59 = [(SATaskState *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      v74 = v57;
      v75 = 1024;
      *v76 = v58;
      *&v76[4] = 2048;
      *&v76[6] = v17;
      *&v76[14] = 2048;
      *&v76[16] = v59;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u donating uniquepids), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v54;
    v60 = [(SATaskState *)self debugDescription];
    v61 = [v60 UTF8String];
    v62 = BYTE6(a3->var14);
    [(SATaskState *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(3603, "%s: after serializing (with %u donating uniquepids), ended with length %ld, should be %lu", v63, v64, v65, v66, v67, v68, v61);

    _os_crash();
    __break(1u);
  }

  BYTE6(a3->var14) = v13;
  v16 = &v9[8 * v13];
  v17 = v16 - a3 + 24;
  if (v17 != [(SATaskState *)self sizeInBytesForSerializedVersion])
  {
    goto LABEL_24;
  }

  *v16 = [(SATaskState *)self transitionType];
  *(v16 + 2) = [(SATaskState *)self memoryLimitMB];
  *(v16 + 3) = [(SATaskState *)self effectiveJetsamPriority];
  *(v16 + 4) = [(SATaskState *)self requestedJetsamPriority];
  *(v16 + 5) = [(SATaskState *)self assertionJetsamPriority];
  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:a3];
    endTimestamp = self->_endTimestamp;

    [(SATimestamp *)endTimestamp addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v70 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_38;
  }

  v4 = a4;
  if (a4 <= 0x66)
  {
    v27 = *__error();
    v5 = _sa_logt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v67 = v4;
      v68 = 2048;
      v69 = 103;
      _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct %lu", buf, 0x16u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(3628, "bufferLength %lu < serialized SATaskState struct %lu", v28, v29, v30, v31, v32, v33, v4);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  v5 = a3;
  v6 = *(a3 + 94);
  v7 = 8 * v6;
  if (8 * v6 + 103 > a4)
  {
LABEL_29:
    v34 = *__error();
    v35 = _sa_logt();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(v5 + 94);
      *buf = 134218240;
      v67 = v4;
      v68 = 1024;
      LODWORD(v69) = v36;
      _os_log_error_impl(&dword_1E0E2F000, v35, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", buf, 0x12u);
    }

    *__error() = v34;
    v62 = *(v5 + 94);
    _SASetCrashLogMessage(3630, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", v37, v38, v39, v40, v41, v42, v4);
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  v8 = a3 + 103;
  if (*(a3 + 1) < 2u)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 + 111 > a4)
  {
LABEL_32:
    v43 = *__error();
    v44 = _sa_logt();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(v5 + 94);
      *buf = 134218240;
      v67 = v4;
      v68 = 1024;
      LODWORD(v69) = v45;
      _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct v2 with %u donating unique pids", buf, 0x12u);
    }

    *__error() = v43;
    v63 = *(v5 + 94);
    _SASetCrashLogMessage(3638, "bufferLength %lu < serialized SATaskState struct v2 with %u donating unique pids", v46, v47, v48, v49, v50, v51, v4);
    _os_crash();
    __break(1u);
LABEL_35:
    v52 = *__error();
    v53 = _sa_logt();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = *(v5 + 94);
      *buf = 134218240;
      v67 = v4;
      v68 = 1024;
      LODWORD(v69) = v54;
      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct v3 with %u donating unique pids", buf, 0x12u);
    }

    *__error() = v52;
    v64 = *(v5 + 94);
    _SASetCrashLogMessage(3681, "bufferLength %lu < serialized SATaskState struct v3 with %u donating unique pids", v55, v56, v57, v58, v59, v60, v4);
    _os_crash();
    __break(1u);
LABEL_38:
    v61 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATaskState version" userInfo:0];
    objc_exception_throw(v61);
  }

  v9 = &v8[8 * v6];
  if (!*v9)
  {
LABEL_9:
    v10 = 0;
    v11 = off_1E86F4DC8;
    goto LABEL_10;
  }

  v10 = 1;
  v11 = off_1E86F4DD0;
LABEL_10:
  v12 = objc_alloc_init(*v11);
  v13 = v12;
  v14 = *(v5 + 18);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14 != 0x7FFFFFFF && v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = *(v5 + 18);
  }

  v12[8] = v15;
  v16 = *(v5 + 26);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 != 0x7FFFFFFF && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = *(v5 + 26);
  }

  v12[9] = v17;
  *(v12 + 2) = *(v5 + 34);
  v12[10] = *(v5 + 38);
  *(v12 + 3) = *(v5 + 46);
  *(v12 + 4) = *(v5 + 50);
  *(v12 + 5) = *(v5 + 54);
  *(v12 + 6) = *(v5 + 58);
  v12[11] = *(v5 + 62);
  v12[12] = *(v5 + 70);
  v12[13] = *(v5 + 78);
  v12[14] = *(v5 + 86);
  v12[16] = *(v5 + 95);
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(v5 + 94)];
  if (*(v5 + 94))
  {
    v19 = 0;
    do
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v8[8 * v19]];
      [v18 addObject:v20];

      ++v19;
    }

    while (v19 < *(v5 + 94));
  }

  v21 = [v18 copy];
  v22 = v13[15];
  v13[15] = v21;

  if (v10)
  {
    v13[17] = *v9;
  }

  if (*(v5 + 1) < 3u)
  {
    *(v13 + 28) = 0x8000000080000000;
    v24 = 0x80000000;
    *(v13 + 9) = 0x80000000;
    goto LABEL_25;
  }

  v4 = a4;
  if (v7 + 127 > a4)
  {
    goto LABEL_35;
  }

  v23 = &v8[8 * *(v5 + 94)];
  *(v13 + 7) = *(v23 + 2);
  *(v13 + 8) = *(v23 + 3);
  *(v13 + 9) = *(v23 + 4);
  v24 = *(v23 + 5);
LABEL_25:
  *(v13 + 10) = v24;

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x66)
  {
    v20 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v39 = a4;
      v40 = 2048;
      v41 = 103;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(3704, "bufferLength %lu < serialized SATaskState struct %lu", v21, v22, v23, v24, v25, v26, a4);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v7 = a3;
  if (8 * *(a3 + 94) + 103 > a4)
  {
LABEL_10:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(v7 + 94);
      *buf = 134218240;
      v39 = a4;
      v40 = 1024;
      LODWORD(v41) = v29;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", buf, 0x12u);
    }

    *__error() = v27;
    v37 = *(v7 + 94);
    _SASetCrashLogMessage(3705, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", v30, v31, v32, v33, v34, v35, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v36 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATaskState version" userInfo:0];
    objc_exception_throw(v36);
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v13;

  v15 = *(v7 + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, a5, a6, v16);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v17;
  v19 = *MEMORY[0x1E69E9840];
}

+ (SATaskState)stateWithPAStyleTaskPrivateData:(void *)a3 donatingUniquePids:
{
  objc_opt_self();
  v5 = objc_alloc_init(SATaskState);
  v6 = v5;
  if (a2)
  {
    v5->_taskSizeInBytes = *(a2 + 32);
    v5->_faults = *(a2 + 12);
    v5->_pageins = *(a2 + 16);
    v5->_cowFaults = *(a2 + 20);
    v5->_suspendCount = *(a2 + 8);
    v5->_latencyQos = *(a2 + 24);
    v5->_terminatedThreadsUserTimeInNs = *(a2 + 48);
    v5->_terminatedThreadsSystemTimeInNs = *(a2 + 56);
    v5->_terminatedThreadsInstructions = *(a2 + 64);
    v5->_terminatedThreadsCycles = *(a2 + 72);
    v7 = *(a2 + 40);
  }

  else
  {
    v7 = 0;
    *&v5->_suspendCount = 0;
    *&v5->_pageins = 0;
    v5->_latencyQos = 0;
    *&v5->_taskSizeInBytes = 0u;
    *&v5->_terminatedThreadsSystemTimeInNs = 0u;
    v5->_terminatedThreadsCycles = 0;
  }

  v5->_ssFlags = v7;
  objc_storeStrong(&v5->_donatingUniquePids, a3);
  *&v8 = 0x8000000080000000;
  *(&v8 + 1) = 0x8000000080000000;
  *&v6->_memoryLimitMB = v8;

  return v6;
}

@end