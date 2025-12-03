@interface BKHIDTouchSensitiveButtonEventProcessor
- (BKHIDTouchSensitiveButtonEventProcessor)initWithContext:(id)context;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDTouchSensitiveButtonEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  if (IOHIDEventGetType() == 42)
  {
    os_unfair_lock_lock(&self->_lock);
    v70 = senderCopy;
    v72 = senderCopy;
    v69 = dispatcherCopy;
    v71 = dispatcherCopy;
    if (self)
    {
      os_unfair_lock_assert_owner(&self->_lock);
      senderID = [v72 senderID];
      IntegerValue = IOHIDEventGetIntegerValue();
      v66 = IOHIDEventGetIntegerValue();
      memset(buf, 0, sizeof(buf));
      v82 = 0u;
      v83 = 0u;
      v11 = IOHIDEventGetChildren();
      v12 = [v11 countByEnumeratingWithState:buf objects:&v73 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = **&buf[16];
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (**&buf[16] != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*&buf[8] + 8 * i);
            Type = IOHIDEventGetType();
            if (Type == 1)
            {
              if (IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 34)
              {
                v13 = v17;
              }
            }

            else if (Type == 41)
            {
              v14 = v17;
            }

            if (v13 && v14)
            {

              goto LABEL_22;
            }
          }

          v12 = [v11 countByEnumeratingWithState:buf objects:&v73 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        if (!v14)
        {
          goto LABEL_36;
        }

LABEL_22:
        v20 = IOHIDEventGetIntegerValue();
        v21 = IOHIDEventGetIntegerValue();
        v22 = [_BKTouchSensitiveButtonKey alloc];
        if (v22)
        {
          v73.receiver = v22;
          v73.super_class = _BKTouchSensitiveButtonKey;
          v23 = [(BKHIDTouchSensitiveButtonEventProcessor *)&v73 init];
          v24 = v23;
          if (v23)
          {
            *&v23->_lock._os_unfair_lock_opaque = senderID;
            LOWORD(v23->_buttonScanningController) = IntegerValue;
            WORD1(v23->_buttonScanningController) = v66;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = [(NSMutableDictionary *)self->_lock_eventRecords objectForKey:v24];
        v26 = v24;
        v73.receiver = v26;
        v27 = v25;
        v73.super_class = v27;
        v74 = v20;
        v75 = v21;
        v76 = v10;
        v77 = v14;
        v78 = v13;
        v79 = v72;
        v80 = v71;
        v28 = 2 * (v21 == 0);
        v29 = sub_100008528();
        if (os_log_type_enabled(v29, v28))
        {
          TimeStamp = IOHIDEventGetTimeStamp();
          v31 = sub_100027568(v10);
          *buf = 134218242;
          *&buf[4] = TimeStamp;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_impl(&_mh_execute_header, v29, v28, "in %llX %{public}@", buf, 0x16u);
        }

        if (v74)
        {
          if (v73.super_class)
          {
            v32 = *(v73.super_class + 2);
          }

          else
          {
            v32 = 0;
          }

          SenderID = IOHIDEventGetSenderID();
          v34 = SenderID;
          if (SenderID)
          {
            if (v32 && SenderID != v32)
            {
              v35 = sub_100008528();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v34;
                *&buf[12] = 2048;
                *&buf[14] = v32;
                v36 = "TouchSensitiveButton: dropping event for sender %llX -- existing event for sender %llX is in progress";
                v37 = v35;
                v38 = 22;
LABEL_73:
                _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
              }

LABEL_41:

LABEL_42:
              sub_100035C24(&v73);

              goto LABEL_43;
            }

            if (!v75)
            {
              if (!v73.super_class)
              {
                v35 = sub_100008528();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  receiver = v73.receiver;
                  v65 = sub_100026D80(v74);
                  *buf = 138543618;
                  *&buf[4] = receiver;
                  *&buf[12] = 2114;
                  *&buf[14] = v65;
                  _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[TouchSensitiveButton %{public}@]: did not see an enter transition to stage %{public}@, ignoring change event", buf, 0x16u);
                }

                goto LABEL_41;
              }

              sub_100035FC0(self, v10, &v73);
              sub_100035C70(&v73, v59);
              v48 = v75;
              super_class = v73.super_class;
              if (v73.super_class)
              {
                super_class = *(v73.super_class + 5);
              }

              goto LABEL_56;
            }

            if (v75 != 2)
            {
              if (v75 != 1)
              {
                goto LABEL_42;
              }

              v41 = v73.receiver;
              v42 = v73.super_class;
              if (!v42)
              {
                v42 = objc_alloc_init(_BKTouchSensitiveButtonEventRecord);
                objc_storeStrong(&v73.super_class, v42);
                lock_eventRecords = self->_lock_eventRecords;
                if (!lock_eventRecords)
                {
                  v44 = objc_alloc_init(NSMutableDictionary);
                  v45 = self->_lock_eventRecords;
                  self->_lock_eventRecords = v44;

                  lock_eventRecords = self->_lock_eventRecords;
                }

                [(NSMutableDictionary *)lock_eventRecords setObject:v42 forKey:v41];
                v46 = IOHIDEventGetSenderID();
                if (v42)
                {
                  v42->_senderID = v46;
                }
              }

              sub_100035FC0(self, v10, &v73);
              sub_100035C70(&v73, v47);
              v48 = v75;
              super_class = v73.super_class;
              if (v73.super_class)
              {
                super_class = *(v73.super_class + 5);
              }

LABEL_56:
              v35 = super_class;
              sub_100035D34(self, v10, 0, v48, v35, v80);
              goto LABEL_41;
            }

            v50 = v73.super_class;
            v35 = v50;
            if (v50)
            {
              v51 = v74;
              v52 = v50[3];
              v53 = [v52 containsIndex:v51];

              if (v53)
              {
                sub_100035C70(&v73, v54);
                v55 = v75;
                v56 = v35[5].isa;
                sub_100035D34(self, v10, 0, v55, v56, v80);

                v57 = v35[3].isa;
                v58 = [(objc_class *)v57 count]== 0;

                if (v58)
                {
                  [(NSMutableDictionary *)self->_lock_eventRecords removeObjectForKey:v73.receiver];
                }

                goto LABEL_41;
              }

              v60 = sub_100008528();
              if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              *buf = 138543618;
              *&buf[4] = v73.receiver;
              *&buf[12] = 1024;
              *&buf[14] = v51;
              v61 = "[TouchSensitiveButton %{public}@]: did not see an enter transition to stage %d, ignoring exit event";
              v62 = v60;
              v63 = 18;
            }

            else
            {
              v60 = sub_100008528();
              if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
LABEL_70:

                goto LABEL_41;
              }

              *buf = 138543362;
              *&buf[4] = v73.receiver;
              v61 = "[TouchSensitiveButton %{public}@]: did not see an enter transition for this button, ignoring exit event";
              v62 = v60;
              v63 = 12;
            }

            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
            goto LABEL_70;
          }

          v35 = sub_100008528();
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *buf = 0;
          v36 = "TouchSensitiveButton: dropping event because event senderID is zero. Populate your event fields correctly, people.";
        }

        else
        {
          v35 = sub_100008528();
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *buf = 0;
          v36 = "TouchSensitiveButton: got event for idle stage, bailing";
        }

        v37 = v35;
        v38 = 2;
        goto LABEL_73;
      }

LABEL_36:
      v26 = sub_100008528();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v39 = sub_100027568(v10);
        LODWORD(v73.receiver) = 138543362;
        *(&v73.receiver + 4) = v39;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "missing force stage event -- dropping event: %{public}@", &v73, 0xCu);
      }

LABEL_43:
    }

    os_unfair_lock_unlock(&self->_lock);
    v19 = 1;
    dispatcherCopy = v69;
    senderCopy = v70;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BKHIDTouchSensitiveButtonEventProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = BKHIDTouchSensitiveButtonEventProcessor;
  v5 = [(BKHIDTouchSensitiveButtonEventProcessor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [[BKHIDTouchSensitiveButtonScanningController alloc] initWithContext:contextCopy];
    buttonScanningController = v6->_buttonScanningController;
    v6->_buttonScanningController = v7;
  }

  return v6;
}

@end