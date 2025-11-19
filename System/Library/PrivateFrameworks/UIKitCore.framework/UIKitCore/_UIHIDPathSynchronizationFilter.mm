@interface _UIHIDPathSynchronizationFilter
- (double)initWithPosition:(double)a3 timestamp:(double)a4;
- (double)initWithPosition:(double)a3 timestamp:(double)a4 configuration:(double)a5;
- (double)outputPosition;
- (uint64_t)addInputEvent:(uint64_t)result;
- (void)computeNextOutputPosition:(uint64_t)a1;
@end

@implementation _UIHIDPathSynchronizationFilter

- (double)initWithPosition:(double)a3 timestamp:(double)a4 configuration:(double)a5
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v20.receiver = a1;
  v20.super_class = _UIHIDPathSynchronizationFilter;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[9] = a5;
    v13[10] = a6;
    v13[11] = a7;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = *(v14 + 8);
    *(v14 + 8) = v15;

    v14[12] = 0.0;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &initWithPosition_timestamp_configuration____s_category);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219264;
        v22 = a2;
        v23 = 2048;
        v24 = a3;
        v25 = 2048;
        v26 = a4;
        v27 = 2048;
        v28 = a5;
        v29 = 2048;
        v30 = a6;
        v31 = 2048;
        v32 = a7;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "[FILTER] initialized with position [%f;%f], timestamp: %f. Configuration: (%f, %f, %f)", buf, 0x3Eu);
      }
    }
  }

  return v14;
}

- (double)initWithPosition:(double)a3 timestamp:(double)a4
{
  if (result)
  {
    v7 = result;
    v10 = _UIHIDPathSynchronizationFilterConfigurationDefault();

    return [(_UIHIDPathSynchronizationFilter *)v7 initWithPosition:a2 timestamp:a3 configuration:a4, v10, v8, v9];
  }

  return result;
}

- (uint64_t)addInputEvent:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 96) == 2)
    {
      return 0;
    }

    TimeStamp = IOHIDEventGetTimeStamp();
    v5 = _UIMediaTimeForMachTime(TimeStamp);
    if (*(v2 + 48) >= v5)
    {
      return 0;
    }

    else
    {
      *(v2 + 48) = v5;
      IOHIDEventGetFloatValue();
      v7 = v6;
      IOHIDEventGetFloatValue();
      *(v2 + 32) = v7;
      *(v2 + 40) = v8;
      [*(v2 + 64) addObject:a2];
      return 1;
    }
  }

  return result;
}

- (void)computeNextOutputPosition:(uint64_t)a1
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 96);
    if (v3 == 2)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED499D88);
      if (*CategoryCachedImpl)
      {
        v27 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 96);
          *buf = 134217984;
          v47 = v28;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "[FILTER] computeNextOutputPosition: unexpected state '%ld'.", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v3 != 1)
      {
        if (v3)
        {
          return;
        }

        v5 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED499D78);
        if (*v5)
        {
          v41 = *(v5 + 8);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "[FILTER] computeNextOutputPosition: set initial output position values.", buf, 2u);
          }
        }

        *(a1 + 112) = *(a1 + 8);
        *(a1 + 104) = a2;
        *(a1 + 56) = *(a1 + 24);
        v6 = 1;
        goto LABEL_32;
      }

      v7 = *(a1 + 112);
      v8 = *(a1 + 120);
      if ([*(a1 + 64) count])
      {
        v45 = v7;
        *&v9 = 134218752;
        v44 = v9;
        while (1)
        {
          [*(a1 + 64) firstObject];
          v10 = *(a1 + 56);
          TimeStamp = IOHIDEventGetTimeStamp();
          v12 = _UIMediaTimeForMachTime(TimeStamp) - v10;
          v13 = (*(a1 + 56) - *(a1 + 24)) / (*(a1 + 48) - *(a1 + 24));
          v14 = *(a1 + 104);
          v15 = *(a1 + 88);
          v16 = v13 < v15;
          v17 = (v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15))));
          v18 = (v13 / v15 + -1.0) * ((v13 / v15 + -1.0) * ((v13 / v15 + -1.0) * (v13 / v15 + -1.0)));
          if (!v16)
          {
            v18 = v17;
          }

          v19 = *(a1 + 80) * (1.0 - v18) + *(a1 + 72) * (1.0 - (1.0 - v18));
          v20 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_MergedGlobals_9_13);
          if (*v20)
          {
            v22 = *(v20 + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 64);
              v24 = v22;
              *&v25 = COERCE_DOUBLE([v23 count]);
              *buf = v44;
              v47 = *&v25;
              v48 = 2048;
              v49 = v13;
              v50 = 2048;
              v51 = v19;
              v52 = 2048;
              v53 = v12;
              _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "[FILTER] processing next input segment (events remaining: %lu). Current progress: %f. Time scaling factor: %f. Segment duration: %f", buf, 0x2Au);
            }
          }

          v21 = (a2 - v14) * v19;
          if (v12 >= v21)
          {
            break;
          }

          [*(a1 + 64) removeObjectAtIndex:0];
          if (![*(a1 + 64) count])
          {
            goto LABEL_22;
          }
        }

        v30 = *(a1 + 112);
        v29 = *(a1 + 120);
        IOHIDEventGetFloatValue();
        v32 = v31;
        IOHIDEventGetFloatValue();
        v34 = v33;
        v35 = v21 / v12;
        v45 = round((1.0 - v35) * v30 + v35 * v32);
        v8 = round((1.0 - v35) * v29 + v35 * v33);
        v36 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED499D70);
        if (*v36)
        {
          v43 = *(v36 + 8);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219520;
            v47 = v35;
            v48 = 2048;
            v49 = v30;
            v50 = 2048;
            v51 = v29;
            v52 = 2048;
            v53 = v32;
            v54 = 2048;
            v55 = v34;
            v56 = 2048;
            v57 = v45;
            v58 = 2048;
            v59 = v8;
            _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "[FILTER] calculating new output position: (%f, [%f:%f], [%f:%f]) -> [%f:%f].", buf, 0x48u);
          }
        }

        *(a1 + 56) = v21 + *(a1 + 56);
LABEL_22:
        v7 = v45;
      }

      if (![*(a1 + 64) count])
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
      }

      *(a1 + 112) = v7;
      *(a1 + 120) = v8;
      *(a1 + 104) = a2;
      if (![*(a1 + 64) count] || ((v37 = vsubq_f64(*(a1 + 32), *(a1 + 112)), v37.f64[0] = vaddvq_f64(vmulq_f64(v37, v37)), v38 = fabs(v37.f64[0]), v37.f64[0] > 1.0) ? (v39 = v38 > 2.22044605e-16) : (v39 = 0), !v39))
      {
        v40 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED499D80);
        if (*v40)
        {
          v42 = *(v40 + 8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "[FILTER] computeNextOutputPosition: reached the target.", buf, 2u);
          }
        }

        v6 = 2;
LABEL_32:
        *(a1 + 96) = v6;
      }
    }
  }
}

- (double)outputPosition
{
  if (a1)
  {
    return *(a1 + 112);
  }

  else
  {
    return 0.0;
  }
}

@end