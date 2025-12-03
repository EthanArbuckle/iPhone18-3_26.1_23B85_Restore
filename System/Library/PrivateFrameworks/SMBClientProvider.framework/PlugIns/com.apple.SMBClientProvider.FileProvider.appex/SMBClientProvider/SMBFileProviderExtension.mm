@interface SMBFileProviderExtension
- (SMBFileProviderExtension)init;
- (id)clusterDomainItemsOrError:(id *)error;
@end

@implementation SMBFileProviderExtension

- (SMBFileProviderExtension)init
{
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    sub_10000130C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(SMBFileProviderExtension *)self setClusterDomain:1];
  v15.receiver = self;
  v15.super_class = SMBFileProviderExtension;
  v11 = [(SMBFileProviderExtension *)&v15 init];
  if (v11)
  {
    *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_ItemClass] = objc_opt_class();
    *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_EnumeratorClass] = objc_opt_class();
    v12 = *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_connectionURL];
    *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_connectionURL] = @"machp://com.apple.filesystems.smbclientd";

    v13 = *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_providerName];
    *&v11->LiveFSFPExtensionHelper_opaque[OBJC_IVAR___LiveFSFPExtensionHelper_providerName] = @"com.apple.filesystems.smbclientd";
  }

  return v11;
}

- (id)clusterDomainItemsOrError:(id *)error
{
  v5 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(SMBFileProviderExtension *)selfCopy _hasManagerOrError:error]& 1) != 0)
  {
    objc_sync_exit(selfCopy);

    domain = [(SMBFileProviderExtension *)selfCopy domain];
    if (domain && (-[SMBFileProviderExtension domain](selfCopy, "domain"), v8 = objc_claimAutoreleasedReturnValue(), [v8 identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, domain, v9))
    {
      domain2 = [(SMBFileProviderExtension *)selfCopy domain];
      identifier = [domain2 identifier];

      v12 = [identifier length];
      v13 = livefs_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100001404(identifier, v13, v14, v15, v16, v17, v18, v19);
      }

      manager = [(SMBFileProviderExtension *)selfCopy manager];
      v50 = 0;
      v21 = [manager volumes:&v50];
      v22 = v50;

      v23 = livefs_std_log();
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100001470(v21, v22, v24);
        }

        v25 = v22;
        v26 = livefs_std_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000014F8(error, v25, v26);
        }

        if (error)
        {
          v27 = v25;
          *error = v25;
        }
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v52 = "[SMBFileProviderExtension clusterDomainItemsOrError:]";
          v53 = 2112;
          v54 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: vols %@", buf, 0x16u);
        }

        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10000118C;
        v46[3] = &unk_100004168;
        v47 = identifier;
        v49 = v12;
        v48 = v5;
        [v21 enumerateKeysAndObjectsUsingBlock:v46];

        v25 = v47;
      }

      v36 = v5;
    }

    else
    {
      v37 = livefs_std_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10000159C(v37, v38, v39, v40, v41, v42, v43, v44);
      }

      *error = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      v36 = &__NSArray0__struct;
    }
  }

  else
  {
    v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      sub_100001388(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    objc_sync_exit(selfCopy);

    v36 = 0;
  }

  return v36;
}

@end