@interface AeroMLTracerSpanEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributes:(id)a3;
- (void)addDebugEvents:(id)a3;
- (void)addErrorEvents:(id)a3;
- (void)addInfoEvents:(id)a3;
- (void)addWarningEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasIntervalInMilliSeconds:(BOOL)a3;
- (void)setHasMemoryLevelDeltaInKB:(BOOL)a3;
- (void)setHasPrivatizedEndTime:(BOOL)a3;
- (void)setHasPrivatizedStartTime:(BOOL)a3;
- (void)setHasStartMemoryLevelInKB:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AeroMLTracerSpanEvent

- (void)setHasPrivatizedStartTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPrivatizedEndTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIntervalInMilliSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStartMemoryLevelInKB:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasMemoryLevelDeltaInKB:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAttributes:(id)a3
{
  v4 = a3;
  attributes = self->_attributes;
  v8 = v4;
  if (!attributes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attributes;
    self->_attributes = v6;

    v4 = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:v4];
}

- (void)addInfoEvents:(id)a3
{
  v4 = a3;
  infoEvents = self->_infoEvents;
  v8 = v4;
  if (!infoEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_infoEvents;
    self->_infoEvents = v6;

    v4 = v8;
    infoEvents = self->_infoEvents;
  }

  [(NSMutableArray *)infoEvents addObject:v4];
}

- (void)addWarningEvents:(id)a3
{
  v4 = a3;
  warningEvents = self->_warningEvents;
  v8 = v4;
  if (!warningEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_warningEvents;
    self->_warningEvents = v6;

    v4 = v8;
    warningEvents = self->_warningEvents;
  }

  [(NSMutableArray *)warningEvents addObject:v4];
}

- (void)addDebugEvents:(id)a3
{
  v4 = a3;
  debugEvents = self->_debugEvents;
  v8 = v4;
  if (!debugEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_debugEvents;
    self->_debugEvents = v6;

    v4 = v8;
    debugEvents = self->_debugEvents;
  }

  [(NSMutableArray *)debugEvents addObject:v4];
}

- (void)addErrorEvents:(id)a3
{
  v4 = a3;
  errorEvents = self->_errorEvents;
  v8 = v4;
  if (!errorEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_errorEvents;
    self->_errorEvents = v6;

    v4 = v8;
    errorEvents = self->_errorEvents;
  }

  [(NSMutableArray *)errorEvents addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AeroMLTracerSpanEvent;
  v4 = [(AeroMLTracerSpanEvent *)&v8 description];
  v5 = [(AeroMLTracerSpanEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [v3 setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  testKey = self->_testKey;
  if (testKey)
  {
    [v4 setObject:testKey forKey:@"testKey"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId)
  {
    [v4 setObject:trialDeploymentId forKey:@"trialDeploymentId"];
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId)
  {
    [v4 setObject:trialExperimentId forKey:@"trialExperimentId"];
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId)
  {
    [v4 setObject:trialTreatmentId forKey:@"trialTreatmentId"];
  }

  traceId = self->_traceId;
  if (traceId)
  {
    [v4 setObject:traceId forKey:@"traceId"];
  }

  parentSpanId = self->_parentSpanId;
  if (parentSpanId)
  {
    [v4 setObject:parentSpanId forKey:@"parentSpanId"];
  }

  spanId = self->_spanId;
  if (spanId)
  {
    [v4 setObject:spanId forKey:@"spanId"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_privatizedStartTime];
    [v4 setObject:v63 forKey:@"privatizedStartTime"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_privatizedEndTime];
  [v4 setObject:v64 forKey:@"privatizedEndTime"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_intervalInMilliSeconds];
    [v4 setObject:v16 forKey:@"intervalInMilliSeconds"];
  }

LABEL_25:
  errorString = self->_errorString;
  if (errorString)
  {
    [v4 setObject:errorString forKey:@"errorString"];
  }

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v4 setObject:v65 forKey:@"errorCode"];

    v18 = self->_has;
    if ((v18 & 0x40) == 0)
    {
LABEL_29:
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_93;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_29;
  }

  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startMemoryLevelInKB];
  [v4 setObject:v66 forKey:@"startMemoryLevelInKB"];

  v18 = self->_has;
  if ((v18 & 1) == 0)
  {
LABEL_30:
    if ((v18 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_93:
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endMemoryLevelInKB];
  [v4 setObject:v67 forKey:@"endMemoryLevelInKB"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_31:
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_memoryLevelDeltaInKB];
    [v4 setObject:v19 forKey:@"memoryLevelDeltaInKB"];
  }

LABEL_32:
  processName = self->_processName;
  if (processName)
  {
    [v4 setObject:processName forKey:@"processName"];
  }

  gcdQueueName = self->_gcdQueueName;
  if (gcdQueueName)
  {
    [v4 setObject:gcdQueueName forKey:@"gcdQueueName"];
  }

  qosClassName = self->_qosClassName;
  if (qosClassName)
  {
    [v4 setObject:qosClassName forKey:@"qosClassName"];
  }

  relativePriority = self->_relativePriority;
  if (relativePriority)
  {
    [v4 setObject:relativePriority forKey:@"relativePriority"];
  }

  projectName = self->_projectName;
  if (projectName)
  {
    [v4 setObject:projectName forKey:@"projectName"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v26 = self->_attributes;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v84 objects:v92 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v85;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v85 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v84 + 1) + 8 * i) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v84 objects:v92 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"attributes"];
  }

  if ([(NSMutableArray *)self->_infoEvents count])
  {
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_infoEvents, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v33 = self->_infoEvents;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v81;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v81 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v80 + 1) + 8 * j) dictionaryRepresentation];
          [v32 addObject:v38];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v80 objects:v91 count:16];
      }

      while (v35);
    }

    [v4 setObject:v32 forKey:@"infoEvents"];
  }

  if ([(NSMutableArray *)self->_warningEvents count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_warningEvents, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v40 = self->_warningEvents;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v76 objects:v90 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v77;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v77 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v76 + 1) + 8 * k) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v76 objects:v90 count:16];
      }

      while (v42);
    }

    [v4 setObject:v39 forKey:@"warningEvents"];
  }

  if ([(NSMutableArray *)self->_debugEvents count])
  {
    v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_debugEvents, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v47 = self->_debugEvents;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v73;
      do
      {
        for (m = 0; m != v49; ++m)
        {
          if (*v73 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v72 + 1) + 8 * m) dictionaryRepresentation];
          [v46 addObject:v52];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
      }

      while (v49);
    }

    [v4 setObject:v46 forKey:@"debugEvents"];
  }

  if ([(NSMutableArray *)self->_errorEvents count])
  {
    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_errorEvents, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v54 = self->_errorEvents;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v68 objects:v88 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v69;
      do
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v69 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v68 + 1) + 8 * n) dictionaryRepresentation];
          [v53 addObject:v59];
        }

        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v68 objects:v88 count:16];
      }

      while (v56);
    }

    [v4 setObject:v53 forKey:@"errorEvents"];
  }

  v60 = v4;

  v61 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)writeTo:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentSpanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spanId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    privatizedStartTime = self->_privatizedStartTime;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  privatizedEndTime = self->_privatizedEndTime;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    intervalInMilliSeconds = self->_intervalInMilliSeconds;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    startMemoryLevelInKB = self->_startMemoryLevelInKB;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_33:
      if ((v8 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  endMemoryLevelInKB = self->_endMemoryLevelInKB;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_34:
    memoryLevelDeltaInKB = self->_memoryLevelDeltaInKB;
    PBDataWriterWriteUint32Field();
  }

LABEL_35:
  if (self->_gcdQueueName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_qosClassName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_relativePriority)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_projectName)
  {
    PBDataWriterWriteStringField();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = self->_attributes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v62;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v61 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v12);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = self->_infoEvents;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v58;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v57 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v18);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v22 = self->_warningEvents;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v54;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v54 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v53 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v24);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = self->_debugEvents;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v50;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v49 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v30);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = self->_errorEvents;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v46;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v45 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
    }

    while (v36);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v27 = v4;
  if (self->_deviceIdentifier)
  {
    [v4 setDeviceIdentifier:?];
    v4 = v27;
  }

  if (self->_testKey)
  {
    [v27 setTestKey:?];
    v4 = v27;
  }

  if (self->_version)
  {
    [v27 setVersion:?];
    v4 = v27;
  }

  if (self->_name)
  {
    [v27 setName:?];
    v4 = v27;
  }

  if (self->_trialDeploymentId)
  {
    [v27 setTrialDeploymentId:?];
    v4 = v27;
  }

  if (self->_trialExperimentId)
  {
    [v27 setTrialExperimentId:?];
    v4 = v27;
  }

  if (self->_trialTreatmentId)
  {
    [v27 setTrialTreatmentId:?];
    v4 = v27;
  }

  if (self->_traceId)
  {
    [v27 setTraceId:?];
    v4 = v27;
  }

  if (self->_parentSpanId)
  {
    [v27 setParentSpanId:?];
    v4 = v27;
  }

  if (self->_spanId)
  {
    [v27 setSpanId:?];
    v4 = v27;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 25) = self->_privatizedStartTime;
    *(v4 + 208) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v4 + 24) = self->_privatizedEndTime;
  *(v4 + 208) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    *(v4 + 18) = self->_intervalInMilliSeconds;
    *(v4 + 208) |= 4u;
  }

LABEL_25:
  if (self->_errorString)
  {
    [v27 setErrorString:?];
    v4 = v27;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 9) = self->_errorCode;
    *(v4 + 208) |= 2u;
  }

  if (self->_processName)
  {
    [v27 setProcessName:?];
    v4 = v27;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 36) = self->_startMemoryLevelInKB;
    *(v4 + 208) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_33:
      if ((v6 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  *(v4 + 8) = self->_endMemoryLevelInKB;
  *(v4 + 208) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_34:
    *(v4 + 19) = self->_memoryLevelDeltaInKB;
    *(v4 + 208) |= 8u;
  }

LABEL_35:
  if (self->_gcdQueueName)
  {
    [v27 setGcdQueueName:?];
  }

  if (self->_qosClassName)
  {
    [v27 setQosClassName:?];
  }

  if (self->_relativePriority)
  {
    [v27 setRelativePriority:?];
  }

  if (self->_projectName)
  {
    [v27 setProjectName:?];
  }

  if ([(AeroMLTracerSpanEvent *)self attributesCount])
  {
    [v27 clearAttributes];
    v7 = [(AeroMLTracerSpanEvent *)self attributesCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(AeroMLTracerSpanEvent *)self attributesAtIndex:i];
        [v27 addAttributes:v10];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self infoEventsCount])
  {
    [v27 clearInfoEvents];
    v11 = [(AeroMLTracerSpanEvent *)self infoEventsCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(AeroMLTracerSpanEvent *)self infoEventsAtIndex:j];
        [v27 addInfoEvents:v14];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self warningEventsCount])
  {
    [v27 clearWarningEvents];
    v15 = [(AeroMLTracerSpanEvent *)self warningEventsCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(AeroMLTracerSpanEvent *)self warningEventsAtIndex:k];
        [v27 addWarningEvents:v18];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self debugEventsCount])
  {
    [v27 clearDebugEvents];
    v19 = [(AeroMLTracerSpanEvent *)self debugEventsCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(AeroMLTracerSpanEvent *)self debugEventsAtIndex:m];
        [v27 addDebugEvents:v22];
      }
    }
  }

  if ([(AeroMLTracerSpanEvent *)self errorEventsCount])
  {
    [v27 clearErrorEvents];
    v23 = [(AeroMLTracerSpanEvent *)self errorEventsCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(AeroMLTracerSpanEvent *)self errorEventsAtIndex:n];
        [v27 addErrorEvents:v26];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_deviceIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_testKey copyWithZone:a3];
  v9 = *(v5 + 152);
  *(v5 + 152) = v8;

  v10 = [(NSString *)self->_version copyWithZone:a3];
  v11 = *(v5 + 192);
  *(v5 + 192) = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSString *)self->_trialDeploymentId copyWithZone:a3];
  v15 = *(v5 + 168);
  *(v5 + 168) = v14;

  v16 = [(NSString *)self->_trialExperimentId copyWithZone:a3];
  v17 = *(v5 + 176);
  *(v5 + 176) = v16;

  v18 = [(NSString *)self->_trialTreatmentId copyWithZone:a3];
  v19 = *(v5 + 184);
  *(v5 + 184) = v18;

  v20 = [(NSString *)self->_traceId copyWithZone:a3];
  v21 = *(v5 + 160);
  *(v5 + 160) = v20;

  v22 = [(NSString *)self->_parentSpanId copyWithZone:a3];
  v23 = *(v5 + 88);
  *(v5 + 88) = v22;

  v24 = [(NSString *)self->_spanId copyWithZone:a3];
  v25 = *(v5 + 136);
  *(v5 + 136) = v24;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 100) = self->_privatizedStartTime;
    *(v5 + 208) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_privatizedEndTime;
  *(v5 + 208) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 72) = self->_intervalInMilliSeconds;
    *(v5 + 208) |= 4u;
  }

LABEL_5:
  v27 = [(NSString *)self->_errorString copyWithZone:a3];
  v28 = *(v5 + 48);
  *(v5 + 48) = v27;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 36) = self->_errorCode;
    *(v5 + 208) |= 2u;
  }

  v29 = [(NSString *)self->_processName copyWithZone:a3];
  v30 = *(v5 + 104);
  *(v5 + 104) = v29;

  v31 = self->_has;
  if ((v31 & 0x40) != 0)
  {
    *(v5 + 144) = self->_startMemoryLevelInKB;
    *(v5 + 208) |= 0x40u;
    v31 = self->_has;
    if ((v31 & 1) == 0)
    {
LABEL_9:
      if ((v31 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 32) = self->_endMemoryLevelInKB;
  *(v5 + 208) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v5 + 76) = self->_memoryLevelDeltaInKB;
    *(v5 + 208) |= 8u;
  }

LABEL_11:
  v32 = [(NSString *)self->_gcdQueueName copyWithZone:a3];
  v33 = *(v5 + 56);
  *(v5 + 56) = v32;

  v34 = [(NSString *)self->_qosClassName copyWithZone:a3];
  v35 = *(v5 + 120);
  *(v5 + 120) = v34;

  v36 = [(NSString *)self->_relativePriority copyWithZone:a3];
  v37 = *(v5 + 128);
  *(v5 + 128) = v36;

  v38 = [(NSString *)self->_projectName copyWithZone:a3];
  v39 = *(v5 + 112);
  *(v5 + 112) = v38;

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v40 = self->_attributes;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v89;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v89 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v88 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAttributes:v45];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v88 objects:v96 count:16];
    }

    while (v42);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v46 = self->_infoEvents;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v85;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v85 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v84 + 1) + 8 * j) copyWithZone:a3];
        [v5 addInfoEvents:v51];
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v48);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v52 = self->_warningEvents;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v80 objects:v94 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v81;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v81 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v80 + 1) + 8 * k) copyWithZone:a3];
        [v5 addWarningEvents:v57];
      }

      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v80 objects:v94 count:16];
    }

    while (v54);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v58 = self->_debugEvents;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v77;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v77 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v76 + 1) + 8 * m) copyWithZone:a3];
        [v5 addDebugEvents:v63];
      }

      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v60);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v64 = self->_errorEvents;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v72 objects:v92 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v73;
    do
    {
      for (n = 0; n != v66; ++n)
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v72 + 1) + 8 * n) copyWithZone:{a3, v72}];
        [v5 addErrorEvents:v69];
      }

      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v72 objects:v92 count:16];
    }

    while (v66);
  }

  v70 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier | *(v4 + 3))
  {
    if (![(NSString *)deviceIdentifier isEqual:?])
    {
      goto LABEL_81;
    }
  }

  testKey = self->_testKey;
  if (testKey | *(v4 + 19))
  {
    if (![(NSString *)testKey isEqual:?])
    {
      goto LABEL_81;
    }
  }

  version = self->_version;
  if (version | *(v4 + 24))
  {
    if (![(NSString *)version isEqual:?])
    {
      goto LABEL_81;
    }
  }

  name = self->_name;
  if (name | *(v4 + 10))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialDeploymentId = self->_trialDeploymentId;
  if (trialDeploymentId | *(v4 + 21))
  {
    if (![(NSString *)trialDeploymentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialExperimentId = self->_trialExperimentId;
  if (trialExperimentId | *(v4 + 22))
  {
    if (![(NSString *)trialExperimentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  trialTreatmentId = self->_trialTreatmentId;
  if (trialTreatmentId | *(v4 + 23))
  {
    if (![(NSString *)trialTreatmentId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  traceId = self->_traceId;
  if (traceId | *(v4 + 20))
  {
    if (![(NSString *)traceId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  parentSpanId = self->_parentSpanId;
  if (parentSpanId | *(v4 + 11))
  {
    if (![(NSString *)parentSpanId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  spanId = self->_spanId;
  if (spanId | *(v4 + 17))
  {
    if (![(NSString *)spanId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  has = self->_has;
  v16 = *(v4 + 208);
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 208) & 0x20) == 0 || self->_privatizedStartTime != *(v4 + 25))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 0x20) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 208) & 0x10) == 0 || self->_privatizedEndTime != *(v4 + 24))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 0x10) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 208) & 4) == 0 || self->_intervalInMilliSeconds != *(v4 + 18))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 4) != 0)
  {
    goto LABEL_81;
  }

  errorString = self->_errorString;
  if (errorString | *(v4 + 6))
  {
    if (![(NSString *)errorString isEqual:?])
    {
      goto LABEL_81;
    }

    has = self->_has;
  }

  v18 = *(v4 + 208);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 208) & 2) == 0 || self->_errorCode != *(v4 + 9))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 2) != 0)
  {
    goto LABEL_81;
  }

  processName = self->_processName;
  if (processName | *(v4 + 13))
  {
    if ([(NSString *)processName isEqual:?])
    {
      has = self->_has;
      goto LABEL_48;
    }

LABEL_81:
    v30 = 0;
    goto LABEL_82;
  }

LABEL_48:
  v20 = *(v4 + 208);
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 208) & 0x40) == 0 || self->_startMemoryLevelInKB != *(v4 + 36))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 0x40) != 0)
  {
    goto LABEL_81;
  }

  if (has)
  {
    if ((*(v4 + 208) & 1) == 0 || self->_endMemoryLevelInKB != *(v4 + 8))
    {
      goto LABEL_81;
    }
  }

  else if (*(v4 + 208))
  {
    goto LABEL_81;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 208) & 8) == 0 || self->_memoryLevelDeltaInKB != *(v4 + 19))
    {
      goto LABEL_81;
    }
  }

  else if ((*(v4 + 208) & 8) != 0)
  {
    goto LABEL_81;
  }

  gcdQueueName = self->_gcdQueueName;
  if (gcdQueueName | *(v4 + 7) && ![(NSString *)gcdQueueName isEqual:?])
  {
    goto LABEL_81;
  }

  qosClassName = self->_qosClassName;
  if (qosClassName | *(v4 + 15))
  {
    if (![(NSString *)qosClassName isEqual:?])
    {
      goto LABEL_81;
    }
  }

  relativePriority = self->_relativePriority;
  if (relativePriority | *(v4 + 16))
  {
    if (![(NSString *)relativePriority isEqual:?])
    {
      goto LABEL_81;
    }
  }

  projectName = self->_projectName;
  if (projectName | *(v4 + 14))
  {
    if (![(NSString *)projectName isEqual:?])
    {
      goto LABEL_81;
    }
  }

  attributes = self->_attributes;
  if (attributes | *(v4 + 1))
  {
    if (![(NSMutableArray *)attributes isEqual:?])
    {
      goto LABEL_81;
    }
  }

  infoEvents = self->_infoEvents;
  if (infoEvents | *(v4 + 8))
  {
    if (![(NSMutableArray *)infoEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  warningEvents = self->_warningEvents;
  if (warningEvents | *(v4 + 25))
  {
    if (![(NSMutableArray *)warningEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  debugEvents = self->_debugEvents;
  if (debugEvents | *(v4 + 2))
  {
    if (![(NSMutableArray *)debugEvents isEqual:?])
    {
      goto LABEL_81;
    }
  }

  errorEvents = self->_errorEvents;
  if (errorEvents | *(v4 + 5))
  {
    v30 = [(NSMutableArray *)errorEvents isEqual:?];
  }

  else
  {
    v30 = 1;
  }

LABEL_82:

  return v30;
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_deviceIdentifier hash];
  v30 = [(NSString *)self->_testKey hash];
  v29 = [(NSString *)self->_version hash];
  v28 = [(NSString *)self->_name hash];
  v27 = [(NSString *)self->_trialDeploymentId hash];
  v26 = [(NSString *)self->_trialExperimentId hash];
  v25 = [(NSString *)self->_trialTreatmentId hash];
  v24 = [(NSString *)self->_traceId hash];
  v3 = [(NSString *)self->_parentSpanId hash];
  v4 = [(NSString *)self->_spanId hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = 2654435761 * self->_privatizedStartTime;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_privatizedEndTime;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_intervalInMilliSeconds;
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = [(NSString *)self->_errorString hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_errorCode;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_processName hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_13;
    }

LABEL_16:
    v12 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v11 = 2654435761 * self->_startMemoryLevelInKB;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v12 = 2654435761 * self->_endMemoryLevelInKB;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = 2654435761 * self->_memoryLevelDeltaInKB;
LABEL_18:
  v14 = v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v15 = v12 ^ v13 ^ [(NSString *)self->_gcdQueueName hash];
  v16 = v15 ^ [(NSString *)self->_qosClassName hash];
  v17 = v16 ^ [(NSString *)self->_relativePriority hash];
  v18 = v17 ^ [(NSString *)self->_projectName hash];
  v19 = v14 ^ v18 ^ [(NSMutableArray *)self->_attributes hash];
  v20 = [(NSMutableArray *)self->_infoEvents hash];
  v21 = v20 ^ [(NSMutableArray *)self->_warningEvents hash];
  v22 = v21 ^ [(NSMutableArray *)self->_debugEvents hash];
  return v19 ^ v22 ^ [(NSMutableArray *)self->_errorEvents hash];
}

- (void)mergeFrom:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(AeroMLTracerSpanEvent *)self setDeviceIdentifier:?];
  }

  if (*(v4 + 19))
  {
    [(AeroMLTracerSpanEvent *)self setTestKey:?];
  }

  if (*(v4 + 24))
  {
    [(AeroMLTracerSpanEvent *)self setVersion:?];
  }

  if (*(v4 + 10))
  {
    [(AeroMLTracerSpanEvent *)self setName:?];
  }

  if (*(v4 + 21))
  {
    [(AeroMLTracerSpanEvent *)self setTrialDeploymentId:?];
  }

  if (*(v4 + 22))
  {
    [(AeroMLTracerSpanEvent *)self setTrialExperimentId:?];
  }

  if (*(v4 + 23))
  {
    [(AeroMLTracerSpanEvent *)self setTrialTreatmentId:?];
  }

  if (*(v4 + 20))
  {
    [(AeroMLTracerSpanEvent *)self setTraceId:?];
  }

  if (*(v4 + 11))
  {
    [(AeroMLTracerSpanEvent *)self setParentSpanId:?];
  }

  if (*(v4 + 17))
  {
    [(AeroMLTracerSpanEvent *)self setSpanId:?];
  }

  v5 = *(v4 + 208);
  if ((v5 & 0x20) != 0)
  {
    self->_privatizedStartTime = *(v4 + 25);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 208);
    if ((v5 & 0x10) == 0)
    {
LABEL_23:
      if ((v5 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v4 + 208) & 0x10) == 0)
  {
    goto LABEL_23;
  }

  self->_privatizedEndTime = *(v4 + 24);
  *&self->_has |= 0x10u;
  if ((*(v4 + 208) & 4) != 0)
  {
LABEL_24:
    self->_intervalInMilliSeconds = *(v4 + 18);
    *&self->_has |= 4u;
  }

LABEL_25:
  if (*(v4 + 6))
  {
    [(AeroMLTracerSpanEvent *)self setErrorString:?];
  }

  if ((*(v4 + 208) & 2) != 0)
  {
    self->_errorCode = *(v4 + 9);
    *&self->_has |= 2u;
  }

  if (*(v4 + 13))
  {
    [(AeroMLTracerSpanEvent *)self setProcessName:?];
  }

  v6 = *(v4 + 208);
  if ((v6 & 0x40) != 0)
  {
    self->_startMemoryLevelInKB = *(v4 + 36);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 208);
    if ((v6 & 1) == 0)
    {
LABEL_33:
      if ((v6 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*(v4 + 208) & 1) == 0)
  {
    goto LABEL_33;
  }

  self->_endMemoryLevelInKB = *(v4 + 8);
  *&self->_has |= 1u;
  if ((*(v4 + 208) & 8) != 0)
  {
LABEL_34:
    self->_memoryLevelDeltaInKB = *(v4 + 19);
    *&self->_has |= 8u;
  }

LABEL_35:
  if (*(v4 + 7))
  {
    [(AeroMLTracerSpanEvent *)self setGcdQueueName:?];
  }

  if (*(v4 + 15))
  {
    [(AeroMLTracerSpanEvent *)self setQosClassName:?];
  }

  if (*(v4 + 16))
  {
    [(AeroMLTracerSpanEvent *)self setRelativePriority:?];
  }

  if (*(v4 + 14))
  {
    [(AeroMLTracerSpanEvent *)self setProjectName:?];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AeroMLTracerSpanEvent *)self addAttributes:*(*(&v49 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = *(v4 + 8);
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AeroMLTracerSpanEvent *)self addInfoEvents:*(*(&v45 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = *(v4 + 25);
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AeroMLTracerSpanEvent *)self addWarningEvents:*(*(&v41 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v19);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = *(v4 + 2);
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(AeroMLTracerSpanEvent *)self addDebugEvents:*(*(&v37 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v24);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = *(v4 + 5);
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(AeroMLTracerSpanEvent *)self addErrorEvents:*(*(&v33 + 1) + 8 * n), v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v29);
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end