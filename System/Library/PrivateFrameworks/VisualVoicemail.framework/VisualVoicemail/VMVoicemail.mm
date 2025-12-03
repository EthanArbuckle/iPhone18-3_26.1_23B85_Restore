@interface VMVoicemail
+ (id)messageForRecord:(void *)record forContexts:(id)contexts andIsoCodes:(id)codes;
@end

@implementation VMVoicemail

+ (id)messageForRecord:(void *)record forContexts:(id)contexts andIsoCodes:(id)codes
{
  contextsCopy = contexts;
  codesCopy = codes;
  v9 = objc_alloc_init(VMMutableVoicemail);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = [NSDate dateWithTimeIntervalSince1970:VMStoreRecordGetDate(record)];
  [v9 setDate:v10];

  [v9 setDuration:VMStoreRecordGetDuration(record)];
  [v9 setFlags:VMStoreRecordGetFlags(record)];
  [v9 setIdentifier:VMStoreRecordGetIdentifier(record)];
  [v9 setRemoteUID:VMStoreRecordGetRemoteUID(record)];
  v11 = VMStoreRecordCopyCallbackNumber(record);
  if (v11)
  {
    [v9 setCallbackDestinationID:v11];
    v12 = PNCopyBestGuessCountryCodeForNumber();
    [v9 setCallbackISOCountryCode:v12];
  }

  v13 = VMStoreRecordCopySender(record);
  if (v13)
  {
    [v9 setSenderDestinationID:v13];
    v14 = PNCopyBestGuessCountryCodeForNumber();
    [v9 setSenderISOCountryCode:v14];
  }

  v60 = v13;
  v15 = VMStoreRecordGetLabel(record);
  uUIDString = [v15 UUIDString];

  if (uUIDString)
  {
    [v9 setReceiverLabelID:uUIDString];
  }

  if (contextsCopy)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v17 = contextsCopy;
    v18 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v54 = v11;
      v56 = codesCopy;
      v58 = contextsCopy;
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
        labelID = [v22 labelID];
        v24 = [labelID isEqualToString:uUIDString];

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
          codesCopy = v56;
          contextsCopy = v58;
          v11 = v54;
          goto LABEL_24;
        }
      }

      v25 = v22;

      if (!v25)
      {
        codesCopy = v56;
        contextsCopy = v58;
        v11 = v54;
        goto LABEL_26;
      }

      phoneNumber = [v25 phoneNumber];

      codesCopy = v56;
      contextsCopy = v58;
      v11 = v54;
      if (!phoneNumber)
      {
        goto LABEL_26;
      }

      phoneNumber2 = [v25 phoneNumber];
      [v9 setReceiverDestinationID:phoneNumber2];

      uuid = [v25 uuid];
      v17 = [v56 objectForKey:uuid];

      if (v17)
      {
        [v9 setReceiverISOCountryCode:v17];
      }

      else
      {
        receiverDestinationID = [v9 receiverDestinationID];
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
  v57 = codesCopy;
  v59 = contextsCopy;
  v51 = v33;
  v34 = [NSURL fileURLWithPath:v33 isDirectory:0];
  [v9 setSummarizationMetaDataURL:v34];

  summarizationMetaDataURL = [v9 summarizationMetaDataURL];
  v62 = 0;
  v36 = [NSData dataWithContentsOfURL:summarizationMetaDataURL options:1 error:&v62];
  v37 = v62;

  if (!v36)
  {
    localizedDescription = [v37 localizedDescription];
    v43 = [NSString stringWithFormat:@"%@\n", localizedDescription];
    uTF8String = [v43 UTF8String];
    fputs(uTF8String, __stderrp);
    v42 = v37;
LABEL_38:

    goto LABEL_39;
  }

  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [NSSet setWithObjects:v38, v39, objc_opt_class(), 0];
  v61 = v37;
  localizedDescription = [NSKeyedUnarchiver unarchivedObjectOfClasses:v40 fromData:v36 error:&v61];
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

  codesCopy = v57;
  contextsCopy = v59;
  v11 = v55;
  v33 = v51;
LABEL_40:

  v46 = VMStoreRecordGetUUID(record);
  [v9 setUuid:v46];

LABEL_41:
  v44 = v9;
LABEL_42:

  return v44;
}

@end