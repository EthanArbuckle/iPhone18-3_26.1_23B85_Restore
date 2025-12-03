@interface MessagesTextInputModelDataSource
- (MessagesTextInputModelDataSource)init;
- (id)nextOutgoingMessageBatch;
@end

@implementation MessagesTextInputModelDataSource

- (MessagesTextInputModelDataSource)init
{
  v3.receiver = self;
  v3.super_class = MessagesTextInputModelDataSource;
  result = [(MessagesTextInputModelDataSource *)&v3 init];
  if (result)
  {
    result->_currentMaxRow = 0;
  }

  return result;
}

- (id)nextOutgoingMessageBatch
{
  v3 = IMDMessageRecordCountMessages();
  currentMaxRow = self->_currentMaxRow;
  if (((v3 - currentMaxRow) & ~((v3 - currentMaxRow) >> 63)) >= 1000)
  {
    v5 = 1000;
  }

  else
  {
    v5 = (v3 - currentMaxRow) & ~((v3 - currentMaxRow) >> 63);
  }

  v7 = v3 <= currentMaxRow;
  v6 = v3 - currentMaxRow;
  v7 = v7 || v6 < 1;
  if (v7 || (v8 = IMDMessageRecordCopyMessagesBetweenRowIDs()) == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = v8;
    v22 = v5;
    if (CFArrayGetCount(v8) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        CFArrayGetValueAtIndex(v9, v11);
        v26 = -1;
        v27[0] = 0;
        v24 = -1;
        v25 = -1;
        v23 = 0;
        IMDMessageRecordBulkCopy();
        if (!v25)
        {
          unsignedLongLongValue = [v23 unsignedLongLongValue];
          v13 = IMDMessageRecordCopyHandle();
          if (v13)
          {
            CFAllocatorGetDefault();
            v14 = IMDHandleRecordCopyID();
          }

          else
          {
            v14 = 0;
          }

          if (v26 < 1)
          {
            v15 = 0;
          }

          else
          {
            v15 = [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v26];
          }

          if (v27[0] && CFStringGetLength(v27[0]) && v14 && CFStringGetLength(v14) && v15)
          {
            v16 = v10;
            v17 = (unsignedLongLongValue >> 2) & 1;
            v18 = [MessagesDataSourceMessage alloc];
            v19 = [(MessagesDataSourceMessage *)v18 initWithDate:v15 recipient:v14 body:v27[0]];
            v20 = v17;
            v10 = v16;
            [(MessagesDataSourceMessage *)v19 setFromMe:v20];
            [(MessagesDataSourceMessage *)v19 setRowID:v24];
            [(MessagesDataSourceMessage *)v19 setGuid:0];
            if (!v16)
            {
              v10 = objc_alloc_init(NSMutableArray);
            }

            [v10 addObject:v19];
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }
        }

        if (v27[0])
        {
          CFRelease(v27[0]);
          v27[0] = 0;
        }

        ++v11;
      }

      while (v11 < CFArrayGetCount(v9));
    }

    CFRelease(v9);
    v5 = v22;
  }

  self->_currentMaxRow += v5;
  return v10;
}

@end