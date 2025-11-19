@interface SAHIDStep
+ (SAHIDStep)hidStepWithDebugId:(int)a3 pid:(unint64_t)a4 tid:;
- (NSString)debugidString;
- (id)debugDescription;
@end

@implementation SAHIDStep

+ (SAHIDStep)hidStepWithDebugId:(int)a3 pid:(unint64_t)a4 tid:
{
  objc_opt_self();
  v7 = objc_alloc_init(SAHIDStep);
  v7->_debugid = a2;
  v7->_pid = a3;
  v7->_tid = a4;

  return v7;
}

- (NSString)debugidString
{
  debugid = self->_debugid;
  if (debugid <= 736428043)
  {
    if (debugid <= 730268059)
    {
      if (debugid > 730267907)
      {
        if (debugid == 730267908)
        {
          v3 = @"UIKit HID callback start";
          goto LABEL_47;
        }

        if (debugid == 730268056)
        {
          v3 = @"Keyboard event start";
          goto LABEL_47;
        }
      }

      else
      {
        if (debugid == 730267892)
        {
          v3 = @"Event dispatch begin";
          goto LABEL_47;
        }

        if (debugid == 730267896)
        {
          v3 = @"Event dispatch end";
          goto LABEL_47;
        }
      }
    }

    else if (debugid <= 735576101)
    {
      if (debugid == 730268060)
      {
        v3 = @"Keyboard event stop";
        goto LABEL_47;
      }

      if (debugid == 735576101)
      {
        v3 = @"Entry to NSApplication sendEvent";
        goto LABEL_47;
      }
    }

    else
    {
      switch(debugid)
      {
        case 735576102:
          v3 = @"Return from NSApplication sendEvent";
          goto LABEL_47;
        case 736428036:
          v3 = @"hid_translation_state_append_wrapped_nxevent";
          goto LABEL_47;
        case 736428040:
          v3 = @"CGXGetNextEvent";
          goto LABEL_47;
      }
    }
  }

  else if (debugid > 736428063)
  {
    if (debugid <= 736493575)
    {
      if (debugid == 736428064)
      {
        v3 = @"decode_and_forward";
        goto LABEL_47;
      }

      if (debugid == 736493572)
      {
        v3 = @"PushToCGEventQueue";
        goto LABEL_47;
      }
    }

    else
    {
      switch(debugid)
      {
        case 736493576:
          v3 = @"CreateAndPostEventWithCGEvent";
          goto LABEL_47;
        case 736493580:
          v3 = @"PullEventsFromWindowServerOnConnection";
          goto LABEL_47;
        case 736493584:
          v3 = @"ReceiveNextEventCommon (for the next event)";
          goto LABEL_47;
      }
    }
  }

  else if (debugid <= 736428051)
  {
    if (debugid == 736428044)
    {
      v3 = @"sHIDContinuation";
      goto LABEL_47;
    }

    if (debugid == 736428048)
    {
      v3 = @"sPostContinuation";
      goto LABEL_47;
    }
  }

  else
  {
    switch(debugid)
    {
      case 736428052:
        v3 = @"sAnnotatedContinuation";
        goto LABEL_47;
      case 736428056:
        v3 = @"CGXFilterEventToConnection";
        goto LABEL_47;
      case 736428060:
        v3 = @"post_event_tap_data";
        goto LABEL_47;
    }
  }

  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN(0x%x)", self->_debugid];
LABEL_47:

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SATimestamp *)self->_timestamp debugDescription];
  debugid = self->_debugid;
  v6 = [(SAHIDStep *)self debugidString];
  v7 = [v3 initWithFormat:@"%@ %#10x (%@) [%d] thread 0x%llx", v4, debugid, v6, self->_pid, self->_tid];

  return v7;
}

@end