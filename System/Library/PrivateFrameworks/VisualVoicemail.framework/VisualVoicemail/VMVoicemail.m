@interface VMVoicemail
+ (id)messageForRecord:(void *)a3 forContexts:(id)a4 andIsoCodes:(id)a5;
@end

@implementation VMVoicemail

+ (id)messageForRecord:(void *)a3 forContexts:(id)a4 andIsoCodes:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(VMMutableVoicemail);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = [NSDate dateWithTimeIntervalSince1970:VMStoreRecordGetDate(a3)];
  [v9 setDate:v10];

  [v9 setDuration:VMStoreRecordGetDuration(a3)];
  [v9 setFlags:VMStoreRecordGetFlags(a3)];
  [v9 setIdentifier:VMStoreRecordGetIdentifier(a3)];
  [v9 setRemoteUID:VMStoreRecordGetRemoteUID(a3)];
  v11 = VMStoreRecordCopyCallbackNumber(a3);
  if (v11)
  {
    [v9 setCallbackDestinationID:v11];
    v12 = PNCopyBestGuessCountryCodeForNumber();
    [v9 setCallbackISOCountryCode:v12];
  }

  v13 = VMStoreRecordCopySender(a3);
  if (v13)
  {
    [v9 setSenderDestinationID:v13];
    v14 = PNCopyBestGuessCountryCodeForNumber();
    [v9 setSenderISOCountryCode:v14];
  }

  v60 = v13;
  v15 = VMStoreRecordGetLabel(a3);
  v16 = [v15 UUIDString];

  if (v16)
  {
    [v9 setReceiverLabelID:v16];
  }

  if (v7)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v54 = v11;
      v56 = v8;
      v58 = v7;
      v20 = *v64;
LABEL_11:
      v21 = 0;
      while (1)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v63 + 1) + 8 * v21);
        v23 = [v22 labelID];
        v24 = [v23 isEqualToString:v16];

        if (v24)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v19)
          {
            goto LABEL_11;
          }

          v25 = 0;
          v8 = v56;
          v7 = v58;
          v11 = v54;
          goto LABEL_24;
        }
      }

      v25 = v22;

      if (!v25)
      {
        v8 = v56;
        v7 = v58;
        v11 = v54;
        goto LABEL_26;
      }

      v26 = [v25 phoneNumber];

      v8 = v56;
      v7 = v58;
      v11 = v54;
      if (!v26)
      {
        goto LABEL_26;
      }

      v27 = [v25 phoneNumber];
      [v9 setReceiverDestinationID:v27];

      v28 = [v25 uuid];
      v17 = [v56 objectForKey:v28];

      if (v17)
      {
        [v9 setReceiverISOCountryCode:v17];
      }

      else
      {
        v48 = [v9 receiverDestinationID];
        v49 = v25;
        v50 = PNCopyBestGuessCountryCodeForNumber();
        [v9 setReceiverISOCountryCode:v50];

        v25 = v49;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_24:
  }

  else
  {
    v25 = 0;
  }

LABEL_26:
  v29 = VMStoreRecordCopyDataPath();
  if (![v29 length])
  {

    v44 = 0;
    goto LABEL_42;
  }

  v53 = v25;
  v30 = [NSURL fileURLWithPath:v29 isDirectory:0];
  [v9 setDataURL:v30];

  v31 = VMStoreRecordCopyTranscriptionPath();
  if ([v31 length])
  {
    v32 = [NSURL fileURLWithPath:v31 isDirectory:0];
    [v9 setTranscriptionURL:v32];
  }

  v52 = v31;
  v33 = VMStoreRecordCopySummarizationPath();
  if (![v33 length])
  {
    v42 = vm_vmd_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10009BCD4(v42);
    }

    goto LABEL_40;
  }

  v55 = v11;
  v57 = v8;
  v59 = v7;
  v51 = v33;
  v34 = [NSURL fileURLWithPath:v33 isDirectory:0];
  [v9 setSummarizationMetaDataURL:v34];

  v35 = [v9 summarizationMetaDataURL];
  v62 = 0;
  v36 = [NSData dataWithContentsOfURL:v35 options:1 error:&v62];
  v37 = v62;

  if (!v36)
  {
    v41 = [v37 localizedDescription];
    v43 = [NSString stringWithFormat:@"%@\n", v41];
    v45 = [v43 UTF8String];
    fputs(v45, __stderrp);
    v42 = v37;
LABEL_38:

    goto LABEL_39;
  }

  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [NSSet setWithObjects:v38, v39, objc_opt_class(), 0];
  v61 = v37;
  v41 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v40 fromData:v36 error:&v61];
  v42 = v61;

  if (v42)
  {
    v43 = vm_vmd_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_10009BC5C(v42, v43);
    }

    goto LABEL_38;
  }

LABEL_39:

  v8 = v57;
  v7 = v59;
  v11 = v55;
  v33 = v51;
LABEL_40:

  v46 = VMStoreRecordGetUUID(a3);
  [v9 setUuid:v46];

LABEL_41:
  v44 = v9;
LABEL_42:

  return v44;
}

@end