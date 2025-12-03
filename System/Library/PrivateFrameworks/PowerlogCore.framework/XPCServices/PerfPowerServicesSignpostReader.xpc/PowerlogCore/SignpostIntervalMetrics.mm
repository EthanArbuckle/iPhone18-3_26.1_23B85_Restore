@interface SignpostIntervalMetrics
- (SignpostIntervalMetrics)initWithBeginSnapshot:(id)snapshot endSnapshot:(id)endSnapshot animationInterval:(id)interval;
- (id)getMetricDictionary;
- (void)updateSummary:(id)summary endSnapshot:(id)snapshot animationInterval:(id)interval;
@end

@implementation SignpostIntervalMetrics

- (SignpostIntervalMetrics)initWithBeginSnapshot:(id)snapshot endSnapshot:(id)endSnapshot animationInterval:(id)interval
{
  snapshotCopy = snapshot;
  endSnapshotCopy = endSnapshot;
  intervalCopy = interval;
  v53.receiver = self;
  v53.super_class = SignpostIntervalMetrics;
  v11 = [(SignpostIntervalMetrics *)&v53 init];
  if (v11)
  {
    metrics = [snapshotCopy metrics];
    metrics2 = [endSnapshotCopy metrics];
    v14 = metrics2;
    if (metrics && metrics2)
    {
      cpuTimeNsec = [metrics2 cpuTimeNsec];
      [cpuTimeNsec doubleValue];
      v17 = v16;
      cpuTimeNsec2 = [metrics cpuTimeNsec];
      [cpuTimeNsec2 doubleValue];
      v11->cpuTimeSec = (v17 - v19) / 1000000000.0;

      dirtyMemoryLifetimePeakKB = [v14 dirtyMemoryLifetimePeakKB];
      [dirtyMemoryLifetimePeakKB doubleValue];
      v22 = v21;

      dirtyMemoryLifetimePeakKB2 = [metrics dirtyMemoryLifetimePeakKB];
      [dirtyMemoryLifetimePeakKB2 doubleValue];
      v25 = v24;

      if (v22 >= v25)
      {
        v26 = v22;
      }

      else
      {
        v26 = v25;
      }

      v11->peakMemoryKB = v26;
      dirtyMemoryKB = [v14 dirtyMemoryKB];
      [dirtyMemoryKB doubleValue];
      v29 = v28;
      dirtyMemoryKB2 = [metrics dirtyMemoryKB];
      [dirtyMemoryKB2 doubleValue];
      v11->averageMemoryKB = (v29 + v31) * 0.5;

      storageDirtiedKB = [v14 storageDirtiedKB];
      [storageDirtiedKB doubleValue];
      v34 = v33;
      storageDirtiedKB2 = [metrics storageDirtiedKB];
      [storageDirtiedKB2 doubleValue];
      v11->diskLogicalWritesKB = v34 - v36;

      cpuInstructionsKI = [metrics cpuInstructionsKI];
      if (!cpuInstructionsKI || (v38 = cpuInstructionsKI, [v14 cpuInstructionsKI], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, !v39))
      {
        v11->cpuInstructionsKI = 0.0;
        if (intervalCopy)
        {
          goto LABEL_11;
        }

        goto LABEL_13;
      }

      cpuInstructionsKI2 = [v14 cpuInstructionsKI];
      [cpuInstructionsKI2 doubleValue];
      v42 = v41;
      cpuInstructionsKI3 = [metrics cpuInstructionsKI];
      [cpuInstructionsKI3 doubleValue];
      v11->cpuInstructionsKI = v42 - v44;
    }

    if (intervalCopy)
    {
LABEL_11:
      glitches = [intervalCopy glitches];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100001790;
      v51[3] = &unk_100014430;
      v46 = v11;
      v52 = v46;
      [glitches enumerateObjectsUsingBlock:v51];

      [intervalCopy durationSeconds];
      v46[7] = (v47 * 1000.0);

LABEL_14:
      *&v11->countInstances = xmmword_10000E2B0;
      [snapshotCopy startMs];
      v11->prevStartMs = v48;
      [endSnapshotCopy endMs];
      v11->prevEndMs = v49;

      goto LABEL_15;
    }

LABEL_13:
    v11->hitchDuration = 0.0;
    v11->animationDuration = 0.0;
    goto LABEL_14;
  }

LABEL_15:

  return v11;
}

- (void)updateSummary:(id)summary endSnapshot:(id)snapshot animationInterval:(id)interval
{
  summaryCopy = summary;
  snapshotCopy = snapshot;
  intervalCopy = interval;
  metrics = [summaryCopy metrics];
  metrics2 = [snapshotCopy metrics];
  v13 = metrics2;
  ++self->countInstances;
  if (metrics && metrics2)
  {
    dirtyMemoryKB = [metrics2 dirtyMemoryKB];
    [dirtyMemoryKB doubleValue];
    v16 = v15;
    dirtyMemoryKB2 = [metrics dirtyMemoryKB];
    [dirtyMemoryKB2 doubleValue];
    v19 = (v16 + v18) * 0.5;

    cpuTimeNsec = [v13 cpuTimeNsec];
    [cpuTimeNsec doubleValue];
    v22 = v21;
    cpuTimeNsec2 = [metrics cpuTimeNsec];
    [cpuTimeNsec2 doubleValue];
    self->cpuTimeSec = self->cpuTimeSec + (v22 - v24) / 1000000000.0;

    peakMemoryKB = self->peakMemoryKB;
    dirtyMemoryLifetimePeakKB = [v13 dirtyMemoryLifetimePeakKB];
    [dirtyMemoryLifetimePeakKB doubleValue];
    v28 = v27;

    dirtyMemoryLifetimePeakKB2 = [metrics dirtyMemoryLifetimePeakKB];
    [dirtyMemoryLifetimePeakKB2 doubleValue];
    v31 = v30;

    if (v28 >= v31)
    {
      v32 = v28;
    }

    else
    {
      v32 = v31;
    }

    if (peakMemoryKB >= v32)
    {
      v32 = peakMemoryKB;
    }

    v33 = self->averageMemoryKB + (v19 - self->averageMemoryKB) / self->countInstances;
    self->peakMemoryKB = v32;
    self->averageMemoryKB = v33;
    storageDirtiedKB = [v13 storageDirtiedKB];
    [storageDirtiedKB doubleValue];
    v36 = v35;
    storageDirtiedKB2 = [metrics storageDirtiedKB];
    [storageDirtiedKB2 doubleValue];
    self->diskLogicalWritesKB = self->diskLogicalWritesKB + v36 - v38;
  }

  if (intervalCopy)
  {
    glitches = [intervalCopy glitches];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100001ABC;
    v48[3] = &unk_100014430;
    v48[4] = self;
    [glitches enumerateObjectsUsingBlock:v48];

    [intervalCopy durationSeconds];
    self->animationDuration = self->animationDuration + (v40 * 1000.0);
  }

  prevStartMs = self->prevStartMs;
  [summaryCopy startMs];
  if (prevStartMs <= v42)
  {
    prevEndMs = self->prevEndMs;
    [summaryCopy startMs];
    if (prevEndMs > v45)
    {
      ++self->countIntervalOverlaps;
    }

    v46 = self->prevEndMs;
    [snapshotCopy endMs];
    if (v46 >= v43)
    {
      v43 = v46;
    }
  }

  else
  {
    [snapshotCopy endMs];
  }

  self->prevEndMs = v43;
  [summaryCopy startMs];
  self->prevStartMs = v47;
}

- (id)getMetricDictionary
{
  v13[0] = @"cpuTime";
  v3 = [NSNumber numberWithDouble:self->cpuTimeSec];
  v14[0] = v3;
  v13[1] = @"peakMemory";
  v4 = [NSNumber numberWithDouble:self->peakMemoryKB];
  v14[1] = v4;
  v13[2] = @"averageMemory";
  v5 = [NSNumber numberWithDouble:self->averageMemoryKB];
  v14[2] = v5;
  v13[3] = @"diskIO";
  v6 = [NSNumber numberWithDouble:self->diskLogicalWritesKB];
  v14[3] = v6;
  v13[4] = @"hitchDuration";
  v7 = [NSNumber numberWithDouble:self->hitchDuration];
  v14[4] = v7;
  v13[5] = @"animationDuration";
  v8 = [NSNumber numberWithDouble:self->animationDuration];
  v14[5] = v8;
  v13[6] = @"countInstances";
  v9 = [NSNumber numberWithDouble:self->countInstances];
  v14[6] = v9;
  v13[7] = @"countIntervalOverlaps";
  v10 = [NSNumber numberWithDouble:self->countIntervalOverlaps];
  v14[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

@end