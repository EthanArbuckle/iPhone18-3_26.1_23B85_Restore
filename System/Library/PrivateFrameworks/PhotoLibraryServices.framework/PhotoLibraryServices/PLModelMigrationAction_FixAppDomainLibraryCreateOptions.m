@interface PLModelMigrationAction_FixAppDomainLibraryCreateOptions
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixAppDomainLibraryCreateOptions

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v116 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [v7 libraryURL];

  if (!v8)
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v23 = [(PLModelMigrationActionCore *)self logger];

      if (v23)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *buf = 0u;
        v85 = 0u;
        v24 = PLMigrationGetLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        LOWORD(v82) = 0;
        LODWORD(v77) = 2;
        v25 = _os_log_send_and_compose_impl();

        v26 = [(PLModelMigrationActionCore *)self logger:&v82];
        [v26 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1194, 16}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v55 = PLMigrationGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to update create options, missing libraryURL", buf, 2u);
        }
      }
    }

    v56 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E69BFF48];
    v80 = *MEMORY[0x1E696A278];
    v81 = @"Missing required libraryURL";
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v12 = [v56 errorWithDomain:v57 code:41001 userInfo:v58];

    if (MEMORY[0x19EAEE230]())
    {
      v39 = v12;
      goto LABEL_61;
    }

    v59 = PLMigrationGetLog();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

    if (!v60)
    {
LABEL_53:
      [(PLModelMigrationActionCore *)self finalizeProgress];
      v70 = v12;
      v71 = 1;
      goto LABEL_64;
    }

    v61 = [(PLModelMigrationActionCore *)self logger];

    if (v61)
    {
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      *buf = 0u;
      v85 = 0u;
      v62 = PLMigrationGetLog();
      os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      LOWORD(v82) = 0;
      LODWORD(v77) = 2;
      v63 = _os_log_send_and_compose_impl();

      v64 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v64 logWithMessage:v63 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1203, 0}];

      if (v63 != buf)
      {
        free(v63);
      }

      goto LABEL_53;
    }

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring failure for non-internal device to avoid unecessary rebuild due to unexpected conditions", buf, 2u);
    }

    goto LABEL_52;
  }

  v9 = [(PLModelMigrationActionCore *)self pathManager];
  v10 = [v9 libraryURL];
  v79 = 0;
  v11 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v10 createIfMissing:0 error:&v79];
  v12 = v79;

  if ([v11 domain]!= 3)
  {
    v27 = PLMigrationGetLog();
    v28 = v27;
    if (v11)
    {
      v29 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = [(PLModelMigrationActionCore *)self logger];

        if (v30)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          *buf = 0u;
          v85 = 0u;
          v31 = PLMigrationGetLog();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          v82 = 138412290;
          v83 = v11;
          LODWORD(v77) = 12;
          v32 = _os_log_send_and_compose_impl();

          v33 = [(PLModelMigrationActionCore *)self logger:&v82];
          v34 = v33;
          v35 = v32;
          v36 = 1188;
          v37 = 0;
          goto LABEL_24;
        }

        v65 = PLMigrationGetLog();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v66 = "Skipping non-app library %@";
        v67 = v65;
        v68 = OS_LOG_TYPE_DEFAULT;
LABEL_50:
        _os_log_impl(&dword_19BF1F000, v67, v68, v66, buf, 0xCu);
LABEL_51:
      }
    }

    else
    {
      v47 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        v48 = [(PLModelMigrationActionCore *)self logger];

        if (v48)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          *buf = 0u;
          v85 = 0u;
          v49 = PLMigrationGetLog();
          os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
          v82 = 138412290;
          v83 = v12;
          LODWORD(v77) = 12;
          v32 = _os_log_send_and_compose_impl();

          v33 = [(PLModelMigrationActionCore *)self logger:&v82];
          v34 = v33;
          v35 = v32;
          v36 = 1190;
          v37 = 16;
LABEL_24:
          [v33 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{v36, v37}];

          if (v32 != buf)
          {
            free(v32);
          }

          goto LABEL_52;
        }

        v65 = PLMigrationGetLog();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        *buf = 138412290;
        *&buf[4] = v12;
        v66 = "Failed to update create options, missing library identifier (%@)";
        v67 = v65;
        v68 = OS_LOG_TYPE_ERROR;
        goto LABEL_50;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  v13 = [[PLGlobalValues alloc] initWithManagedObjectContext:v6];
  v14 = [(PLGlobalValues *)v13 libraryCreateOptions];
  if ((~v14 & 0x73) == 0)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = [(PLModelMigrationActionCore *)self logger];

      if (v17)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *buf = 0u;
        v85 = 0u;
        v18 = PLMigrationGetLog();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        LOWORD(v82) = 0;
        LODWORD(v77) = 2;
        v19 = _os_log_send_and_compose_impl();

        v20 = [(PLModelMigrationActionCore *)self logger:&v82];
        [v20 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1185, 0}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v69 = PLMigrationGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEFAULT, "Library has all required create options", buf, 2u);
        }
      }
    }

    v39 = v12;
LABEL_47:

    v12 = v39;
    goto LABEL_53;
  }

  [PLGlobalValues setLibraryCreateOptions:v14 | 0x73 managedObjectContext:v6];
  v78 = v12;
  v38 = [v6 save:&v78];
  v39 = v78;

  v40 = PLMigrationGetLog();
  v41 = v40;
  if (v38)
  {
    v42 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

    if (v42)
    {
      v43 = [(PLModelMigrationActionCore *)self logger];

      if (v43)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *buf = 0u;
        v85 = 0u;
        v44 = PLMigrationGetLog();
        os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        LOWORD(v82) = 0;
        LODWORD(v77) = 2;
        v45 = _os_log_send_and_compose_impl();

        v46 = [(PLModelMigrationActionCore *)self logger:&v82];
        [v46 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1178, 0}];

        if (v45 != buf)
        {
          free(v45);
        }
      }

      else
      {
        v72 = PLMigrationGetLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_DEFAULT, "Fixed app library create options to disable unsupported services", buf, 2u);
        }
      }
    }

    goto LABEL_47;
  }

  v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

  if (v50)
  {
    v51 = [(PLModelMigrationActionCore *)self logger];

    if (v51)
    {
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      *buf = 0u;
      v85 = 0u;
      v52 = PLMigrationGetLog();
      os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      v82 = 138412290;
      v83 = v39;
      LODWORD(v77) = 12;
      v53 = _os_log_send_and_compose_impl();

      v54 = [(PLModelMigrationActionCore *)self logger:&v82];
      [v54 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1180, 16}];

      if (v53 != buf)
      {
        free(v53);
      }
    }

    else
    {
      v73 = PLMigrationGetLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v39;
        _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Failed to update create options, %@", buf, 0xCu);
      }
    }
  }

  MEMORY[0x19EAEE230]();
LABEL_61:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v74 = v39;
  v70 = v74;
  if (a4)
  {
    v75 = v74;
    *a4 = v70;
  }

  v71 = 3;
LABEL_64:

  return v71;
}

@end