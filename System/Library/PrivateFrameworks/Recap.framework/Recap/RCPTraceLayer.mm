@interface RCPTraceLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation RCPTraceLayer

- (void)drawInContext:(CGContext *)context
{
  v103 = *MEMORY[0x277D85DE8];
  [(RCPTraceLayer *)self bounds];
  CGContextClearRect(context, v104);
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  a = *MEMORY[0x277CBF2C0];
  b = *(MEMORY[0x277CBF2C0] + 8);
  c = *(MEMORY[0x277CBF2C0] + 16);
  d = *(MEMORY[0x277CBF2C0] + 24);
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  v9 = *(MEMORY[0x277CBF2C0] + 40);
  [(RCPTraceLayer *)self bounds];
  tx = v11;
  ty = v12;
  v14 = v13;
  v16 = v15;
  interfaceOrientation = [(RCPTraceLayer *)self interfaceOrientation];
  if (interfaceOrientation <= 1)
  {
    if (interfaceOrientation)
    {
      v18 = tx;
      v19 = ty;
      if (interfaceOrientation == 1)
      {
        a = -v14;
        d = -v16;
        c = 0.0;
        v9 = v16;
        v10 = v14;
        b = 0.0;
      }

      goto LABEL_11;
    }

    CGAffineTransformMakeScale(&v98, v14, v16);
    a = v98.a;
    b = v98.b;
    c = v98.c;
    d = v98.d;
    v10 = v98.tx;
    v9 = v98.ty;
LABEL_10:
    v18 = tx;
    v19 = ty;
    goto LABEL_11;
  }

  if (interfaceOrientation == 2)
  {
    b = -v16;
    v10 = 0.0;
    v9 = v16;
    d = 0.0;
    c = v14;
    a = 0.0;
    goto LABEL_10;
  }

  v18 = tx;
  v19 = ty;
  if (interfaceOrientation == 3)
  {
    c = -v14;
    v9 = 0.0;
    v10 = v14;
    d = 0.0;
    b = v16;
    a = 0.0;
  }

LABEL_11:
  CGAffineTransformMakeTranslation(&t2, v18, v19);
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v10;
  t1.ty = v9;
  CGAffineTransformConcat(&v98, &t1, &t2);
  v20 = v98.b;
  txa = v98.a;
  v21 = v98.c;
  v22 = v98.d;
  v24 = v98.tx;
  v23 = v98.ty;
  eventStream = [(RCPTraceLayer *)self eventStream];
  environment = [eventStream environment];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  eventStream2 = [(RCPTraceLayer *)self eventStream];
  events = [eventStream2 events];

  v79 = [events countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (v79)
  {
    v78 = *v93;
LABEL_13:
    v28 = 0;
    while (1)
    {
      if (*v93 != v78)
      {
        objc_enumerationMutation(events);
      }

      v29 = *(*(&v92 + 1) + 8 * v28);
      if ([v29 timestamp] >= self->_time)
      {
        break;
      }

      tya = v28;
      [v29 hidEvent];
      v30 = IOHIDEventGetChildren();
      if ([v30 count])
      {
        v31 = 0;
        do
        {
          v32 = [v30 objectAtIndexedSubscript:v31];
          IntegerValue = IOHIDEventGetIntegerValue();

          v34 = [v30 objectAtIndexedSubscript:v31];
          IOHIDEventGetFloatValue();
          v36 = v35;

          v37 = [v30 objectAtIndexedSubscript:v31];
          IOHIDEventGetFloatValue();
          v39 = v38;

          v40 = [v30 objectAtIndexedSubscript:v31];
          v41 = IOHIDEventGetIntegerValue();

          v42 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
          v43 = [dictionary objectForKeyedSubscript:v42];

          if (v41)
          {
            if (v43)
            {
              v44 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
              [dictionary removeObjectForKey:v44];
            }

            [(RCPFilePath *)v43 setFinished:1];
          }

          else
          {
            if (v43)
            {
              -[RCPFilePath setEndTimestamp:](v43, "setEndTimestamp:", [v29 timestamp]);
            }

            else
            {
              v43 = objc_alloc_init(RCPFilePath);
              [(RCPFilePath *)v43 setPath:CGPathCreateMutable()];
              -[RCPFilePath setTimestamp:](v43, "setTimestamp:", [v29 timestamp]);
              -[RCPFilePath setEndTimestamp:](v43, "setEndTimestamp:", [v29 timestamp] + 100);
              v45 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
              [dictionary setObject:v43 forKeyedSubscript:v45];

              [array addObject:v43];
            }

            IsEmpty = CGPathIsEmpty([(RCPFilePath *)v43 path]);
            path = [(RCPFilePath *)v43 path];
            v48 = v24 + v21 * v39 + txa * v36;
            v49 = v23 + v22 * v39 + v20 * v36;
            if (IsEmpty)
            {
              CGPathMoveToPoint(path, 0, v48, v49);
            }

            else
            {
              CGPathAddLineToPoint(path, 0, v48, v49);
            }
          }

          ++v31;
        }

        while (v31 < [v30 count]);
      }

      v28 = tya + 1;
      if (tya + 1 == v79)
      {
        v79 = [events countByEnumeratingWithState:&v92 objects:v102 count:16];
        if (v79)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  [environment timeScale];
  v51 = v50;
  [environment timeScale];
  v53 = v52;
  CGContextSetLineWidth(context, 4.0);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  CGContextSetLineCap(context, kCGLineCapRound);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_261A040D0;
  v101 = unk_261A040E0;
  v55 = CGColorCreate(DeviceRGB, components);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v56 = array;
  v57 = [v56 countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (v57)
  {
    v58 = v57;
    txb = (100000000.0 / v51);
    v59 = *v89;
    v83 = (300000000.0 / v53);
    v60 = v83;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v62 = *(*(&v88 + 1) + 8 * i);
        time = self->_time;
        if (time >= [v62 timestamp])
        {
          if (![v62 finished] || (v64 = self->_time, v64 <= objc_msgSend(v62, "endTimestamp") + v83))
          {
            v65 = 1.0;
            if ([v62 finished])
            {
              v66 = self->_time;
              if (v66 > [v62 endTimestamp])
              {
                v67 = self->_time;
                v65 = (1.0 - (v67 - [v62 endTimestamp]) / v60) * 0.25;
              }
            }

            CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, v65);
            CGContextAddPath(context, [v62 path]);
            CGContextSetLineWidth(context, 6.0);
            CGContextStrokePath(context);
            CopyWithAlpha = CGColorCreateCopyWithAlpha(v55, v65);
            CGContextSetStrokeColorWithColor(context, CopyWithAlpha);
            CGContextAddPath(context, [v62 path]);
            CGContextSetLineWidth(context, 4.0);
            CGContextStrokePath(context);
            v69 = self->_time;
            if (v69 < [v62 endTimestamp] + txb)
            {
              CGContextSetFillColorWithColor(context, v55);
              CurrentPoint = CGPathGetCurrentPoint([v62 path]);
              v71 = 16.0;
              if ([v62 finished])
              {
                v72 = self->_time;
                if (v72 > [v62 endTimestamp])
                {
                  v73 = self->_time;
                  v71 = (v73 - [v62 endTimestamp]) * -10.0 / v60 + 16.0;
                }
              }

              v74 = CurrentPoint.x - v71;
              v75 = CurrentPoint.y - v71;
              v76 = v71 + v71;
              v105.origin.x = v74;
              v105.origin.y = v75;
              v105.size.width = v76;
              v105.size.height = v76;
              CGContextFillEllipseInRect(context, v105);
              CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
              v106.origin.x = v74;
              v106.origin.y = v75;
              v106.size.width = v76;
              v106.size.height = v76;
              CGContextStrokeEllipseInRect(context, v106);
            }
          }
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v88 objects:v99 count:16];
    }

    while (v58);
  }

  CGColorRelease(v55);
}

@end