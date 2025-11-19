@interface SUCoreDiagPoint
- (SUCoreDiagPoint)initWithCoder:(id)a3;
- (id)_descriptionStandard;
- (id)_descriptionStateEvent;
- (id)_initFullySpecified:(int64_t)a3 fromLocation:(id)a4 forReason:(id)a5 withCode:(int64_t)a6 withError:(id)a7 previous:(id)a8 next:(id)a9 activity:(id)a10 param:(id)a11;
- (id)_summaryStandard;
- (id)_summaryStateEvent;
- (id)description;
- (id)summary;
- (id)typeName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreDiagPoint

- (id)typeName
{
  v3 = [(SUCoreDiagPoint *)self trackType];
  v4 = [(SUCoreDiagPoint *)self trackType];
  if (v3)
  {
    v5 = @"BEGIN";
    if ((v4 & 2) != 0)
    {
      [@"BEGIN" stringByAppendingString:@"|END"];
    }
  }

  else
  {
    if ((v4 & 2) == 0)
    {
      v5 = (@"ERROR" & ([(SUCoreDiagPoint *)self trackType]<< 61 >> 63));
      goto LABEL_9;
    }

    v5 = @"END";
  }

  if (([(SUCoreDiagPoint *)self trackType]& 4) != 0)
  {
    [(__CFString *)v5 stringByAppendingString:@"|ERROR"];
  }

LABEL_9:
  if (([(SUCoreDiagPoint *)self trackType]& 8) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|ANOMALY"];
    }

    else
    {
      v5 = @"ANOMALY";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x10) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FAILURE"];
    }

    else
    {
      v5 = @"FAILURE";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x20) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FAULT"];
    }

    else
    {
      v5 = @"FAULT";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FSM"];
    }

    else
    {
      return @"FSM";
    }
  }

  return v5;
}

- (id)description
{
  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    [(SUCoreDiagPoint *)self _descriptionStateEvent];
  }

  else
  {
    [(SUCoreDiagPoint *)self _descriptionStandard];
  }
  v3 = ;

  return v3;
}

- (id)_descriptionStateEvent
{
  v3 = [(SUCoreDiagPoint *)self next];

  v4 = [(SUCoreDiagPoint *)self activity];

  if (!v3)
  {
    if (!v4)
    {
      v20 = MEMORY[0x1E696AEC0];
      v7 = [(SUCoreDiagPoint *)self typeName];
      v8 = [(SUCoreDiagPoint *)self location];
      v9 = [(SUCoreDiagPoint *)self previous];
      v10 = [(SUCoreDiagPoint *)self reason];
      v15 = [v20 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@", v7, v8, v9, v10];
      goto LABEL_16;
    }

    v16 = [(SUCoreDiagPoint *)self param];

    v17 = MEMORY[0x1E696AEC0];
    v7 = [(SUCoreDiagPoint *)self typeName];
    v8 = [(SUCoreDiagPoint *)self location];
    v9 = [(SUCoreDiagPoint *)self previous];
    v10 = [(SUCoreDiagPoint *)self reason];
    v18 = [(SUCoreDiagPoint *)self activity];
    v11 = v18;
    if (v16)
    {
      v13 = [(SUCoreDiagPoint *)self param];
      [v17 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >A> %@ info:%@", v7, v8, v9, v10, v11, v13];
      v15 = LABEL_10:;
      goto LABEL_11;
    }

    [v17 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >A> %@", v7, v8, v9, v10, v18];
    v15 = LABEL_14:;
    goto LABEL_15;
  }

  if (!v4)
  {
    v19 = MEMORY[0x1E696AEC0];
    v7 = [(SUCoreDiagPoint *)self typeName];
    v8 = [(SUCoreDiagPoint *)self location];
    v9 = [(SUCoreDiagPoint *)self previous];
    v10 = [(SUCoreDiagPoint *)self reason];
    v11 = [(SUCoreDiagPoint *)self next];
    [v19 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@", v7, v8, v9, v10, v11];
    goto LABEL_14;
  }

  v5 = [(SUCoreDiagPoint *)self param];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SUCoreDiagPoint *)self typeName];
  v8 = [(SUCoreDiagPoint *)self location];
  v9 = [(SUCoreDiagPoint *)self previous];
  v10 = [(SUCoreDiagPoint *)self reason];
  v11 = [(SUCoreDiagPoint *)self next];
  v12 = [(SUCoreDiagPoint *)self activity];
  v13 = v12;
  if (!v5)
  {
    [v6 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@ >A> %@", v7, v8, v9, v10, v11, v12];
    goto LABEL_10;
  }

  v14 = [(SUCoreDiagPoint *)self param];
  v15 = [v6 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@ >A> %@ info:%@", v7, v8, v9, v10, v11, v13, v14];

LABEL_11:
LABEL_15:

LABEL_16:

  return v15;
}

- (id)_initFullySpecified:(int64_t)a3 fromLocation:(id)a4 forReason:(id)a5 withCode:(int64_t)a6 withError:(id)a7 previous:(id)a8 next:(id)a9 activity:(id)a10 param:(id)a11
{
  v36 = a4;
  v35 = a5;
  v18 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v31 = a11;
  v37.receiver = self;
  v37.super_class = SUCoreDiagPoint;
  v19 = [(SUCoreDiagPoint *)&v37 init];
  v20 = v19;
  if (v19)
  {
    v19->_trackType = a3;
    objc_storeStrong(&v19->_location, a4);
    objc_storeStrong(&v20->_reason, a5);
    v20->_code = a6;
    if (v18)
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = [v18 checkedDescription];
      v23 = [v21 initWithFormat:@"%@", v22];
      errorDesc = v20->_errorDesc;
      v20->_errorDesc = v23;

      v20->_checkedLayer = [v18 checkedLayer];
      v20->_checkedCode = [v18 checkedCode];
      v25 = [v18 checkedDomain];
      checkedDomain = v20->_checkedDomain;
      v20->_checkedDomain = v25;

      v27 = [v18 checkedIndications];
    }

    else
    {
      v28 = v20->_errorDesc;
      v20->_errorDesc = 0;

      v20->_checkedLayer = 0;
      v20->_checkedCode = 0;
      v29 = v20->_checkedDomain;
      v20->_checkedDomain = 0;

      v27 = 0;
    }

    v20->_checkedIndications = v27;
    objc_storeStrong(&v20->_previous, a8);
    objc_storeStrong(&v20->_next, a9);
    objc_storeStrong(&v20->_activity, a10);
    objc_storeStrong(&v20->_param, a11);
  }

  return v20;
}

- (SUCoreDiagPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUCoreDiagPoint;
  v5 = [(SUCoreDiagPoint *)&v23 init];
  if (v5)
  {
    v5->_trackType = [v4 decodeInt64ForKey:@"trackType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v5->_code = [v4 decodeInt64ForKey:@"code"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorDesc"];
    errorDesc = v5->_errorDesc;
    v5->_errorDesc = v10;

    v5->_checkedLayer = [v4 decodeInt64ForKey:@"checkedLayer"];
    v5->_checkedCode = [v4 decodeInt64ForKey:@"checkedCode"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"checkedDomain"];
    checkedDomain = v5->_checkedDomain;
    v5->_checkedDomain = v12;

    v5->_checkedIndications = [v4 decodeInt64ForKey:@"checkedIndications"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previous"];
    previous = v5->_previous;
    v5->_previous = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"next"];
    next = v5->_next;
    v5->_next = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activity"];
    activity = v5->_activity;
    v5->_activity = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"param"];
    param = v5->_param;
    v5->_param = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  trackType = self->_trackType;
  v5 = a3;
  [v5 encodeInt64:trackType forKey:@"trackType"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_reason forKey:@"reason"];
  [v5 encodeInt64:self->_code forKey:@"code"];
  [v5 encodeObject:self->_errorDesc forKey:@"errorDesc"];
  [v5 encodeInt64:self->_checkedLayer forKey:@"checkedLayer"];
  [v5 encodeInt64:self->_checkedCode forKey:@"checkedCode"];
  [v5 encodeObject:self->_checkedDomain forKey:@"checkedDomain"];
  [v5 encodeInt64:self->_checkedIndications forKey:@"checkedIndications"];
  [v5 encodeObject:self->_previous forKey:@"previous"];
  [v5 encodeObject:self->_next forKey:@"next"];
  [v5 encodeObject:self->_activity forKey:@"activity"];
  [v5 encodeObject:self->_param forKey:@"param"];
}

- (id)summary
{
  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    [(SUCoreDiagPoint *)self _summaryStateEvent];
  }

  else
  {
    [(SUCoreDiagPoint *)self _summaryStandard];
  }
  v3 = ;

  return v3;
}

- (id)_summaryStateEvent
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SUCoreDiagPoint *)self typeName];
  v5 = [(SUCoreDiagPoint *)self location];
  v6 = [(SUCoreDiagPoint *)self previous];
  v7 = [(SUCoreDiagPoint *)self reason];
  v8 = [(SUCoreDiagPoint *)self next];
  v9 = [(SUCoreDiagPoint *)self activity];
  v10 = [(SUCoreDiagPoint *)self param];
  v11 = [v3 stringWithFormat:@"trackType:%@ fsmName:%@ previousState:%@ fsmEvent:%@ nextState:%@ fsmAction:%@ eventInfo:%@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)_descriptionStandard
{
  v3 = [(SUCoreDiagPoint *)self reason];

  v4 = [(SUCoreDiagPoint *)self errorDesc];

  if (v3)
  {
    if (v4)
    {
      if ([(SUCoreDiagPoint *)self checkedLayer])
      {
        v5 = [(SUCoreDiagPoint *)self checkedLayer];
        v6 = MEMORY[0x1E696AEC0];
        v7 = [(SUCoreDiagPoint *)self typeName];
        v8 = [(SUCoreDiagPoint *)self location];
        v9 = [(SUCoreDiagPoint *)self reason];
        v10 = [(SUCoreDiagPoint *)self code];
        v11 = [(SUCoreDiagPoint *)self errorDesc];
        if (v5 > 10)
        {
          v34 = v6;
          v22 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
          v23 = [(SUCoreDiagPoint *)self checkedCode];
          v24 = [(SUCoreDiagPoint *)self checkedDomain];
          v25 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagPoint *)self checkedIndications]];
          v12 = [v34 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@ | checked(%@) code:%ld domain:%@ indications:%@", v7, v8, v9, v10, v11, v22, v23, v24, v25];
        }

        else
        {
          v12 = [v6 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@ | checked(%ld)", v7, v8, v9, v10, v11, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
        }

        goto LABEL_18;
      }

      v18 = MEMORY[0x1E696AEC0];
      v7 = [(SUCoreDiagPoint *)self typeName];
      v8 = [(SUCoreDiagPoint *)self location];
      v17 = [(SUCoreDiagPoint *)self reason];
      v19 = [(SUCoreDiagPoint *)self code];
      v20 = [(SUCoreDiagPoint *)self errorDesc];
      v12 = [v18 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@", v7, v8, v17, v19, v20];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v7 = [(SUCoreDiagPoint *)self typeName];
      v8 = [(SUCoreDiagPoint *)self location];
      v17 = [(SUCoreDiagPoint *)self reason];
      v12 = [v16 stringWithFormat:@"[%@(%@) %@] code:%ld", v7, v8, v17, -[SUCoreDiagPoint code](self, "code")];
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    v21 = MEMORY[0x1E696AEC0];
    v7 = [(SUCoreDiagPoint *)self typeName];
    v8 = [(SUCoreDiagPoint *)self location];
    v12 = [v21 stringWithFormat:@"[%@(%@)] code:%ld", v7, v8, -[SUCoreDiagPoint code](self, "code")];
    goto LABEL_19;
  }

  if (![(SUCoreDiagPoint *)self checkedLayer])
  {
    v26 = MEMORY[0x1E696AEC0];
    v7 = [(SUCoreDiagPoint *)self typeName];
    v8 = [(SUCoreDiagPoint *)self location];
    v27 = [(SUCoreDiagPoint *)self code];
    v28 = [(SUCoreDiagPoint *)self errorDesc];
    v12 = [v26 stringWithFormat:@"[%@(%@)] code:%ld error:%@", v7, v8, v27, v28];

    goto LABEL_19;
  }

  v13 = [(SUCoreDiagPoint *)self checkedLayer];
  v14 = MEMORY[0x1E696AEC0];
  v7 = [(SUCoreDiagPoint *)self typeName];
  v8 = [(SUCoreDiagPoint *)self location];
  v15 = [(SUCoreDiagPoint *)self code];
  v9 = [(SUCoreDiagPoint *)self errorDesc];
  if (v13 > 10)
  {
    v29 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
    v30 = [(SUCoreDiagPoint *)self checkedCode];
    v31 = [(SUCoreDiagPoint *)self checkedDomain];
    v32 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagPoint *)self checkedIndications]];
    v12 = [v14 stringWithFormat:@"[%@(%@)] code:%ld error:%@ | checked(%@) code:%ld domain:%@ indications:%@", v7, v8, v15, v9, v29, v30, v31, v32];
  }

  else
  {
    v12 = [v14 stringWithFormat:@"[%@(%@)] code:%ld error:%@ | checked(%ld)", v7, v8, v15, v9, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
  }

LABEL_18:

LABEL_19:

  return v12;
}

- (id)_summaryStandard
{
  v3 = [(SUCoreDiagPoint *)self errorDesc];

  if (v3)
  {
    if ([(SUCoreDiagPoint *)self checkedLayer])
    {
      v4 = [(SUCoreDiagPoint *)self checkedLayer];
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(SUCoreDiagPoint *)self typeName];
      v7 = [(SUCoreDiagPoint *)self location];
      v8 = [(SUCoreDiagPoint *)self reason];
      v9 = [(SUCoreDiagPoint *)self code];
      v10 = [(SUCoreDiagPoint *)self errorDesc];
      if (v4 > 10)
      {
        v16 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
        v17 = [(SUCoreDiagPoint *)self checkedCode];
        v18 = [(SUCoreDiagPoint *)self checkedDomain];
        v11 = [v5 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@ | checked(%@) code:%ld domain:%@", v6, v7, v8, v9, v10, v16, v17, v18];
      }

      else
      {
        v11 = [v5 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@ | checked(%ld)", v6, v7, v8, v9, v10, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
      }
    }

    else
    {
      v13 = MEMORY[0x1E696AEC0];
      v6 = [(SUCoreDiagPoint *)self typeName];
      v7 = [(SUCoreDiagPoint *)self location];
      v8 = [(SUCoreDiagPoint *)self reason];
      v14 = [(SUCoreDiagPoint *)self code];
      v15 = [(SUCoreDiagPoint *)self errorDesc];
      v11 = [v13 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@", v6, v7, v8, v14, v15];
    }
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v6 = [(SUCoreDiagPoint *)self typeName];
    v7 = [(SUCoreDiagPoint *)self location];
    v8 = [(SUCoreDiagPoint *)self reason];
    v11 = [v12 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld", v6, v7, v8, -[SUCoreDiagPoint code](self, "code")];
  }

  return v11;
}

@end