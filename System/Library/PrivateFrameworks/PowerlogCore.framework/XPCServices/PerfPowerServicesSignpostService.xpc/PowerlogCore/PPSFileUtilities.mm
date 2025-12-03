@interface PPSFileUtilities
+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label;
+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date;
+ (BOOL)supportsEnhancedAPFS;
+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date;
+ (id)containerPath;
@end

@implementation PPSFileUtilities

+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label
{
  purgeableCopy = purgeable;
  v6 = purgeableCopy;
  if (purgeableCopy && label->var0)
  {
    label->var0 |= 0x10005uLL;
    v7 = open([purgeableCopy fileSystemRepresentation], 0);
    v8 = v7;
    if (v7 < 0)
    {
      v11 = PPSLogAPFS();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = *&label->var2;
        *v23 = *&label->var0;
        *&v23[16] = v19;
        *&v23[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
        v20 = strerror(v8);
        *v23 = 138413058;
        *&v23[4] = v6;
        *&v23[12] = 2112;
        *&v23[14] = v13;
        *&v23[22] = 1024;
        *&v23[24] = v8;
        *&v23[28] = 2080;
        *&v23[30] = v20;
        v16 = "Failed to open file handle for '%@' to apply purgeable status: '%@' (error %d = '%s')";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = ffsctl(v7, 0xC0304A6FuLL, label, 0);
      close(v8);
      v10 = PPSLogAPFS();
      v11 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v21 = *&label->var2;
          *v23 = *&label->var0;
          *&v23[16] = v21;
          *&v23[32] = *&label->var4;
          v22 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
          *v23 = 138412546;
          *&v23[4] = v6;
          *&v23[12] = 2112;
          *&v23[14] = v22;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Marked file '%@' as purgeable with label: '%@'", v23, 0x16u);
        }

        v17 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *&label->var2;
        *v23 = *&label->var0;
        *&v23[16] = v12;
        *&v23[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
        v14 = __error();
        v15 = strerror(*v14);
        *v23 = 138413058;
        *&v23[4] = v6;
        *&v23[12] = 2112;
        *&v23[14] = v13;
        *&v23[22] = 1024;
        *&v23[24] = v9;
        *&v23[28] = 2080;
        *&v23[30] = v15;
        v16 = "Failed to mark file '%@' as purgeable with label: '%@' (error %d = '%s')";
LABEL_16:
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v16, v23, 0x26u);
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  purgeableCopy = purgeable;
  [PPSFileUtilities _purgeableLabelWithUrgency:urgency startDate:date];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  LOBYTE(date) = [PPSFileUtilities markAsPurgeable:purgeableCopy label:v9];

  return date;
}

+ (BOOL)supportsEnhancedAPFS
{
  if (qword_100015A10 != -1)
  {
    sub_100007B10();
  }

  return byte_100015A08;
}

+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date
{
  v10 = a5;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0;
  retstr->var0 = date;
  timeIntervalSince1970 = +[PPSFileUtilities supportsEnhancedAPFS];
  if (v10 && timeIntervalSince1970)
  {
    retstr->var2 = 0x80000;
    timeIntervalSince1970 = [v10 timeIntervalSince1970];
    retstr->var4 = 1000000000 * v8;
  }

  return _objc_release_x1(timeIntervalSince1970);
}

+ (id)containerPath
{
  if (qword_100015A18 != -1)
  {
    sub_100007B24();
  }

  v3 = off_100015748;

  return v3;
}

@end