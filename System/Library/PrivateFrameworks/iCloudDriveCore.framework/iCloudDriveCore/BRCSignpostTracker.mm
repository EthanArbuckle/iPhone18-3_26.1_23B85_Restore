@interface BRCSignpostTracker
- (BRCSignpostTracker)initWithLabel:(unsigned int)a3;
- (void)_startSignpostEvent;
- (void)dealloc;
- (void)dropSignpostEvent;
- (void)endSignpostEvent;
@end

@implementation BRCSignpostTracker

- (BRCSignpostTracker)initWithLabel:(unsigned int)a3
{
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 signpostEnabled];

  if (v6)
  {
    v12.receiver = self;
    v12.super_class = BRCSignpostTracker;
    v7 = [(BRCSignpostTracker *)&v12 init];
    if (v7)
    {
      v8 = brc_signpost_log();
      v9 = *(v7 + 2);
      *(v7 + 2) = v8;

      *(v7 + 1) = os_signpost_id_generate(*(v7 + 2));
      *(v7 + 6) = a3;
      [v7 _startSignpostEvent];
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_startSignpostEvent
{
  label = self->_label;
  if (label == 3)
  {
    v10 = self->_log;
    v5 = v10;
    sid = self->_sid;
    if (sid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
    {
      goto LABEL_14;
    }

    v11 = 0;
    v7 = "UploadV1";
    v8 = &v11;
    goto LABEL_13;
  }

  if (label == 2)
  {
    v9 = self->_log;
    v5 = v9;
    sid = self->_sid;
    if (sid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v7 = "ZoneReset";
    v8 = &v12;
    goto LABEL_13;
  }

  if (label != 1)
  {
    return;
  }

  v4 = self->_log;
  v5 = v4;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13 = 0;
    v7 = "ApplyJobs";
    v8 = &v13;
LABEL_13:
    _os_signpost_emit_with_name_impl(&dword_223E7A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, sid, v7, &unk_22423189D, v8, 2u);
  }

LABEL_14:
}

- (void)endSignpostEvent
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_ended)
  {
    obj->_ended = 1;
    objc_sync_exit(obj);

    label = obj->_label;
    switch(label)
    {
      case 3u:
        v3 = obj->_log;
        sid = obj->_sid;
        if (sid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v5 = "UploadV1";
        v6 = buf;
        break;
      case 2u:
        v3 = obj->_log;
        sid = obj->_sid;
        if (sid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
        {
          goto LABEL_18;
        }

        v9 = 0;
        v5 = "ZoneReset";
        v6 = &v9;
        break;
      case 1u:
        v3 = obj->_log;
        sid = obj->_sid;
        if (sid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v3))
        {
          goto LABEL_18;
        }

        v10 = 0;
        v5 = "ApplyJobs";
        v6 = &v10;
        break;
      default:
        return;
    }

    _os_signpost_emit_with_name_impl(&dword_223E7A000, v3, OS_SIGNPOST_INTERVAL_END, sid, v5, &unk_22423189D, v6, 2u);
LABEL_18:

    return;
  }

  objc_sync_exit(obj);
}

- (void)dropSignpostEvent
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_ended)
  {
    obj->_ended = 1;
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _ended%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end