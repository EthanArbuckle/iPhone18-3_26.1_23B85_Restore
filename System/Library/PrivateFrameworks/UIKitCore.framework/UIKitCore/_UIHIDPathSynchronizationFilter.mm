@interface _UIHIDPathSynchronizationFilter
- (double)initWithPosition:(double)position timestamp:(double)timestamp;
- (double)initWithPosition:(double)position timestamp:(double)timestamp configuration:(double)configuration;
- (double)outputPosition;
- (uint64_t)addInputEvent:(uint64_t)result;
- (void)computeNextOutputPosition:(uint64_t)position;
@end

@implementation _UIHIDPathSynchronizationFilter

- (double)initWithPosition:(double)position timestamp:(double)timestamp configuration:(double)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v20.receiver = self;
  v20.super_class = _UIHIDPathSynchronizationFilter;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[9] = configuration;
    v13[10] = a6;
    v13[11] = a7;
    v13[1] = a2;
    v13[2] = position;
    v13[3] = timestamp;
    v13[4] = a2;
    v13[5] = position;
    v13[6] = timestamp;
    array = [MEMORY[0x1E695DF70] array];
    v16 = *(v14 + 8);
    *(v14 + 8) = array;

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
        positionCopy = position;
        v25 = 2048;
        timestampCopy = timestamp;
        v27 = 2048;
        configurationCopy = configuration;
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

- (double)initWithPosition:(double)position timestamp:(double)timestamp
{
  if (result)
  {
    v7 = result;
    v10 = _UIHIDPathSynchronizationFilterConfigurationDefault();

    return [(_UIHIDPathSynchronizationFilter *)v7 initWithPosition:a2 timestamp:position configuration:timestamp, v10, v8, v9];
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

- (void)computeNextOutputPosition:(uint64_t)position
{
  v60 = *MEMORY[0x1E69E9840];
  if (position)
  {
    v3 = *(position + 96);
    if (v3 == 2)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED499D88);
      if (*CategoryCachedImpl)
      {
        v27 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(position + 96);
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

        *(position + 112) = *(position + 8);
        *(position + 104) = a2;
        *(position + 56) = *(position + 24);
        v6 = 1;
        goto LABEL_32;
      }

      v7 = *(position + 112);
      v8 = *(position + 120);
      if ([*(position + 64) count])
      {
        v45 = v7;
        *&v9 = 134218752;
        v44 = v9;
        while (1)
        {
          [*(position + 64) firstObject];
          v10 = *(position + 56);
          TimeStamp = IOHIDEventGetTimeStamp();
          v12 = _UIMediaTimeForMachTime(TimeStamp) - v10;
          v13 = (*(position + 56) - *(position + 24)) / (*(position + 48) - *(position + 24));
          v14 = *(position + 104);
          v15 = *(position + 88);
          v16 = v13 < v15;
          v17 = (v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15) * ((v13 - v15) / (1.0 - v15))));
          v18 = (v13 / v15 + -1.0) * ((v13 / v15 + -1.0) * ((v13 / v15 + -1.0) * (v13 / v15 + -1.0)));
          if (!v16)
          {
            v18 = v17;
          }

          v19 = *(position + 80) * (1.0 - v18) + *(position + 72) * (1.0 - (1.0 - v18));
          v20 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_MergedGlobals_9_13);
          if (*v20)
          {
            v22 = *(v20 + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = *(position + 64);
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

          [*(position + 64) removeObjectAtIndex:0];
          if (![*(position + 64) count])
          {
            goto LABEL_22;
          }
        }

        v30 = *(position + 112);
        v29 = *(position + 120);
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

        *(position + 56) = v21 + *(position + 56);
LABEL_22:
        v7 = v45;
      }

      if (![*(position + 64) count])
      {
        v7 = *(position + 32);
        v8 = *(position + 40);
      }

      *(position + 112) = v7;
      *(position + 120) = v8;
      *(position + 104) = a2;
      if (![*(position + 64) count] || ((v37 = vsubq_f64(*(position + 32), *(position + 112)), v37.f64[0] = vaddvq_f64(vmulq_f64(v37, v37)), v38 = fabs(v37.f64[0]), v37.f64[0] > 1.0) ? (v39 = v38 > 2.22044605e-16) : (v39 = 0), !v39))
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
        *(position + 96) = v6;
      }
    }
  }
}

- (double)outputPosition
{
  if (self)
  {
    return *(self + 112);
  }

  else
  {
    return 0.0;
  }
}

@end