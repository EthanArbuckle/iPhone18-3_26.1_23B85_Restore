@interface SFAirDropTransferTestingSnapshot
+ (id)loadSnapshotFromURL:(id)a3 error:(id *)a4;
+ (id)writeSnapshotForTransfer:(id)a3 initialInfo:(id)a4 name:(id)a5 error:(id *)a6;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (SFAirDropTransferTestingSnapshot)initWithCoder:(id)a3;
- (SFAirDropTransferTestingSnapshot)initWithTransfer:(id)a3 initialInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAirDropTransferTestingSnapshot

+ (id)writeSnapshotForTransfer:(id)a3 initialInfo:(id)a4 name:(id)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[SFAirDropTransferTestingSnapshot alloc] initWithTransfer:v11 initialInfo:v10];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v11 identifier];

  v15 = [v13 stringWithFormat:@"%@_%@", v14, v9];

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 temporaryDirectory];
  v18 = [v17 URLByAppendingPathComponent:v15];

  v27 = 0;
  v19 = [(SFAirDropTransferTestingSnapshot *)v12 writeToURL:v18 error:&v27];
  v20 = v27;
  v21 = airdrop_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v22)
    {
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "Write AirDrop snapshot SUCCESS {url: %@}", buf, 0xCu);
    }

    v23 = v18;
  }

  else
  {
    if (v22)
    {
      *buf = 138412290;
      v29 = v20;
      _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "Write AirDrop snapshot FAIL {error: %@}", buf, 0xCu);
    }

    if (a6)
    {
      v24 = v20;
      v23 = 0;
      *a6 = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)loadSnapshotFromURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DEF0];
  v6 = a3;
  v7 = [[v5 alloc] initWithContentsOfURL:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SFAirDropTransferTestingSnapshot)initWithTransfer:(id)a3 initialInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = SFAirDropTransferTestingSnapshot;
  v9 = [(SFAirDropTransferTestingSnapshot *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transfer, a3);
    if (v8)
    {
      v11 = [v8 objectForKeyedSubscript:@"SenderNode"];

      if (v11)
      {
        v12 = SFNodeCopyDisplayName(v11);
        nodeDisplayName = v10->_nodeDisplayName;
        v10->_nodeDisplayName = &v12->isa;

        v14 = SFNodeCopyRealName(v11);
        nodeRealName = v10->_nodeRealName;
        v10->_nodeRealName = &v14->isa;

        v16 = SFNodeCopyContactIdentifiers(v11);
        nodeContactIdentifiers = v10->_nodeContactIdentifiers;
        v10->_nodeContactIdentifiers = v16;

        v18 = SFNodeCopyContactIdentifier(v11);
        nodeContactIdentifier = v10->_nodeContactIdentifier;
        v10->_nodeContactIdentifier = &v18->isa;
      }

      v20 = [v8 objectForKeyedSubscript:@"FileIcon"];

      v21 = [v8 objectForKeyedSubscript:@"SmallFileIcon"];

      if (v20)
      {
        TransferDataWithCGImage = createTransferDataWithCGImage(v20);
      }

      else
      {
        TransferDataWithCGImage = 0;
      }

      transferFileIcon = v10->_transferFileIcon;
      v10->_transferFileIcon = TransferDataWithCGImage;

      if (v21)
      {
        v24 = createTransferDataWithCGImage(v21);
      }

      else
      {
        v24 = 0;
      }

      transferSmallFileIcon = v10->_transferSmallFileIcon;
      v10->_transferSmallFileIcon = v24;

      objc_storeStrong(&v10->_initialInfo, a4);
    }

    v26 = v10;
  }

  return v10;
}

- (SFAirDropTransferTestingSnapshot)initWithCoder:(id)a3
{
  v40[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SFAirDropTransferTestingSnapshot;
  v5 = [(SFAirDropTransferTestingSnapshot *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transfer"];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v40[5] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:6];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"initialInfo"];
    v12 = *(v5 + 2);
    *(v5 + 2) = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeDisplayName"];
    v14 = *(v5 + 3);
    *(v5 + 3) = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeRealName"];
    v16 = *(v5 + 4);
    *(v5 + 4) = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeIdentifier"];
    v18 = *(v5 + 5);
    *(v5 + 5) = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeContactIdentifier"];
    v20 = *(v5 + 7);
    *(v5 + 7) = v19;

    v21 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"nodeContactIdentifiers"];
    v25 = *(v5 + 6);
    *(v5 + 6) = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferFileIcon"];
    v27 = *(v5 + 8);
    *(v5 + 8) = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferSmallFileIcon"];
    v29 = *(v5 + 9);
    *(v5 + 9) = v28;

    v30 = *(v5 + 2);
    if (v30)
    {
      v31 = [v30 mutableCopy];
      if (*(v5 + 3) && *(v5 + 4))
      {
        v32 = *MEMORY[0x1E695E480];
        v33 = SFNodeCreate();
        SFNodeSetContactIdentifier(v33, *(v5 + 7));
        SFNodeSetContactIdentifiers(v33, *(v5 + 6));
        [v31 setObject:v33 forKeyedSubscript:@"SenderNode"];
      }

      if (*(v5 + 8))
      {
        [v31 setObject:createTransferCGImageWithData() forKeyedSubscript:@"FileIcon"];
      }

      if (*(v5 + 9))
      {
        [v31 setObject:createTransferCGImageWithData() forKeyedSubscript:@"SmallFileIcon"];
      }

      v34 = *(v5 + 2);
      *(v5 + 2) = v31;
    }

    v35 = v5;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_transfer forKey:@"transfer"];
  [v6 encodeObject:self->_nodeDisplayName forKey:@"nodeDisplayName"];
  [v6 encodeObject:self->_nodeRealName forKey:@"nodeRealName"];
  [v6 encodeObject:self->_nodeIdentifier forKey:@"nodeIdentifier"];
  [v6 encodeObject:self->_nodeContactIdentifier forKey:@"nodeContactIdentifier"];
  [v6 encodeObject:self->_nodeContactIdentifiers forKey:@"nodeContactIdentifiers"];
  [v6 encodeObject:self->_transferFileIcon forKey:@"transferFileIcon"];
  [v6 encodeObject:self->_transferSmallFileIcon forKey:@"transferSmallFileIcon"];
  initialInfo = self->_initialInfo;
  if (initialInfo)
  {
    v5 = [(NSDictionary *)initialInfo mutableCopy];
    [v5 setObject:0 forKeyedSubscript:@"SenderNode"];
    [v5 setObject:0 forKeyedSubscript:@"FileIcon"];
    [v5 setObject:0 forKeyedSubscript:@"SmallFileIcon"];
    [v6 encodeObject:v5 forKey:@"initialInfo"];
  }
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 writeToURL:v6 options:1 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end