@interface SFAirDropTransfer
+ (id)keyPathsForValuesAffectingNeedsAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJustFiles;
- (BOOL)needsAction;
- (BOOL)updateUsingCoder:(id)coder;
- (BOOL)updateWithTransfer:(id)transfer;
- (SFAirDropTransfer)initWithCoder:(id)coder;
- (SFAirDropTransfer)initWithIdentifier:(id)identifier initialInformation:(id)information;
- (SFAirDropTransfer)initWithIdentifier:(id)identifier metaData:(id)data userResponse:(unint64_t)response transferState:(unint64_t)state failureReason:(unint64_t)reason error:(id)error customDestinationURL:(id)l contentsTitle:(id)self0 contentsDescription:(id)self1 selectedAction:(id)self2 possibleActions:(id)self3 cancelAction:(id)self4 completedURLs:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (unint64_t)itemCount;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFailureReason:(unint64_t)reason;
- (void)setTransferState:(unint64_t)state;
- (void)setUpProgressToBroadcast:(BOOL)broadcast;
- (void)setUserResponse:(unint64_t)response;
- (void)updateWithInformation:(id)information;
@end

@implementation SFAirDropTransfer

- (SFAirDropTransfer)initWithIdentifier:(id)identifier initialInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationCopy = information;
  v18.receiver = self;
  v18.super_class = SFAirDropTransfer;
  v8 = [(SFAirDropTransfer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_usedByTransferManager = 1;
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    if (v9->_usedByTransferManager)
    {
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v9->_identifier;
        *buf = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = informationCopy;
        _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Initialized with initial information: %@", buf, 0x16u);
      }
    }

    v9->_transferState = 0;
    v14 = [[SFAirDropTransferMetaData alloc] initWithInformation:informationCopy];
    metaData = v9->_metaData;
    v9->_metaData = v14;

    [(SFAirDropTransfer *)v9 updateWithInformation:informationCopy];
    [(SFAirDropTransfer *)v9 setUpProgressToBroadcast:v9->_usedByTransferManager];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (SFAirDropTransfer)initWithIdentifier:(id)identifier metaData:(id)data userResponse:(unint64_t)response transferState:(unint64_t)state failureReason:(unint64_t)reason error:(id)error customDestinationURL:(id)l contentsTitle:(id)self0 contentsDescription:(id)self1 selectedAction:(id)self2 possibleActions:(id)self3 cancelAction:(id)self4 completedURLs:(id)self5
{
  identifierCopy = identifier;
  obj = data;
  dataCopy = data;
  errorCopy = error;
  lCopy = l;
  titleCopy = title;
  descriptionCopy = description;
  actionCopy = action;
  actionsCopy = actions;
  cancelActionCopy = cancelAction;
  lsCopy = ls;
  v37.receiver = self;
  v37.super_class = SFAirDropTransfer;
  v22 = [(SFAirDropTransfer *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_metaData, obj);
    v23->_userResponse = response;
    v23->_transferState = state;
    v23->_failureReason = reason;
    objc_storeStrong(&v23->_error, error);
    objc_storeStrong(&v23->_customDestinationURL, l);
    objc_storeStrong(&v23->_contentsTitle, title);
    objc_storeStrong(&v23->_contentsDescription, description);
    objc_storeStrong(&v23->_selectedAction, action);
    objc_storeStrong(&v23->_possibleActions, actions);
    objc_storeStrong(&v23->_cancelAction, cancelAction);
    objc_storeStrong(&v23->_completedURLs, ls);
    v24 = v23;
  }

  return v23;
}

- (void)setUpProgressToBroadcast:(BOOL)broadcast
{
  broadcastCopy = broadcast;
  v35[3] = *MEMORY[0x1E69E9840];
  v5 = SFAirDropDownloadsURL();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];
    v8 = [v7 URLByAppendingPathComponent:self->_identifier isDirectory:1];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E696AE38];
    if (broadcastCopy)
    {
      v10 = objc_alloc(MEMORY[0x1E696AE38]);
      v11 = *MEMORY[0x1E696A858];
      v34[0] = *MEMORY[0x1E696A880];
      v34[1] = v11;
      v12 = *MEMORY[0x1E696A860];
      v35[0] = v8;
      v35[1] = v12;
      v34[2] = *MEMORY[0x1E696A878];
      v13 = MEMORY[0x1E696AD98];
      metaData = [(SFAirDropTransfer *)self metaData];
      rawFiles = [metaData rawFiles];
      v16 = [v13 numberWithUnsignedInteger:{objc_msgSend(rawFiles, "count")}];
      v35[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
      v18 = [v10 initWithParent:0 userInfo:v17];
      transferProgress = self->_transferProgress;
      self->_transferProgress = v18;

      [(NSProgress *)self->_transferProgress setCancellable:1];
      [(NSProgress *)self->_transferProgress setPausable:0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke;
      v30[3] = &unk_1E788AEA0;
      v20 = &v32;
      objc_copyWeak(&v32, &location);
      v31 = v8;
      [(NSProgress *)self->_transferProgress setCancellationHandler:v30];
      [(NSProgress *)self->_transferProgress publish];
      v21 = &v31;
    }

    else
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_152;
      v27 = &unk_1E788C238;
      v20 = &v29;
      objc_copyWeak(&v29, &location);
      v28 = v8;
      v22 = [v9 addSubscriberForFileURL:v28 withPublishingHandler:&v24];
      [(SFAirDropTransfer *)self setProgressToken:v22, v24, v25, v26, v27];

      v21 = &v28;
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);

LABEL_9:
    goto LABEL_10;
  }

  if (self->_usedByTransferManager)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SFAirDropTransfer *)self setUpProgressToBroadcast:v7];
    }

    goto LABEL_9;
  }

LABEL_10:

  v23 = *MEMORY[0x1E69E9840];
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained identifier];
    v5 = *(a1 + 32);
    v8 = 138543619;
    v9 = v4;
    v10 = 2113;
    v11 = v5;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_INFO, "[Transfer: %{public}@]: SFAirDropTransfer: cancellation handler called %{private}@", &v8, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setUserResponse:2];

  v7 = *MEMORY[0x1E69E9840];
}

id __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTransferProgress:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = WeakRetained;
  v8 = *(a1 + 32);
  v5 = _Block_copy(v7);

  return v5;
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Progress unpublished for transfer at %@", &v10, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 progressToken];
  [*v5 setProgressToken:0];
  if (v7)
  {
    [*v5 setTransferProgress:0];
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2_cold_1(v5, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isJustFiles
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  metaData = [(SFAirDropTransfer *)self metaData];
  items = [metaData items];

  v4 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(items);
        }

        if (![*(*(&v11 + 1) + 8 * i) isFile])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)itemCount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  metaData = [(SFAirDropTransfer *)self metaData];
  items = [metaData items];

  v4 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(items);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) count];
      }

      v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  if (self->_progressToken)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:?];
  }

  [(NSProgress *)self->_transferProgress unpublish];
  v3.receiver = self;
  v3.super_class = SFAirDropTransfer;
  [(SFAirDropTransfer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 updateWithTransfer:self];
  return v4;
}

- (SFAirDropTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropTransfer *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransfer *)v5 updateUsingCoder:coderCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_metaData forKey:@"metaData"];
  [coderCopy encodeInteger:self->_userResponse forKey:@"userResponse"];
  [coderCopy encodeInteger:self->_transferState forKey:@"transferState"];
  [coderCopy encodeInteger:self->_failureReason forKey:@"failureReason"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeObject:self->_contentsTitle forKey:@"contentsTitle"];
  [coderCopy encodeObject:self->_contentsDescription forKey:@"contentsDescription"];
  [coderCopy encodeObject:self->_selectedAction forKey:@"selectedAction"];
  [coderCopy encodeObject:self->_possibleActions forKey:@"possibleActions"];
  [coderCopy encodeObject:self->_cancelAction forKey:@"cancelAction"];
  [coderCopy encodeBool:self->_willOpenInMRQL forKey:@"willOpenInMRQL"];
  [coderCopy encodeObject:self->_completedURLs forKey:@"completedURLs"];
}

- (id)description
{
  objc_opt_class();
  identifier = self->_identifier;
  NSAppendPrintF();
  v28 = 0;
  v20 = SFAirDropTransferStateToString(self->_transferState);
  NSAppendPrintF();
  v3 = v28;

  if (self->_transferState == 9)
  {
    error = self->_error;
    NSAppendPrintF();
    v4 = v3;

    v5 = self->_failureReason - 1;
    if (v5 <= 2)
    {
      v6 = off_1E788C278[v5];
    }

    NSAppendPrintF();
    v3 = v4;
  }

  userResponse = self->_userResponse;
  if (userResponse > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E788C258[userResponse];
  }

  v22 = v8;
  NSAppendPrintF();
  v9 = v3;

  if ([(SFAirDropTransfer *)self needsAction:v22])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v23 = v10;
  NSAppendPrintF();
  v11 = v9;

  if ([(SFAirDropTransfer *)self willOpenInMRQL])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v24 = v12;
  NSAppendPrintF();
  v13 = v11;

  selectedAction = self->_selectedAction;
  if (selectedAction)
  {
    localizedTitle = [(SFAirDropAction *)selectedAction localizedTitle];
    NSAppendPrintF();
    v16 = v13;
  }

  else
  {
    localizedTitle = [(NSArray *)self->_possibleActions valueForKeyPath:@"@unionOfObjects.localizedTitle", v24];
    v25 = SFCompactStringFromCollection(localizedTitle);
    NSAppendPrintF();
    v16 = v13;

    v13 = v25;
  }

  metaData = self->_metaData;
  NSAppendPrintF();
  v17 = v16;

  NSAppendPrintF();
  v18 = v17;

  return v17;
}

- (unint64_t)hash
{
  identifier = [(SFAirDropTransfer *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(SFAirDropTransfer *)self identifier];
      identifier2 = [(SFAirDropTransfer *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)updateWithTransfer:(id)transfer
{
  v4 = MEMORY[0x1E696ACC8];
  transferCopy = transfer;
  v6 = [[v4 alloc] initRequiringSecureCoding:1];
  [transferCopy encodeWithCoder:v6];

  v7 = objc_alloc(MEMORY[0x1E696ACD0]);
  encodedData = [v6 encodedData];
  v9 = [v7 initForReadingFromData:encodedData error:0];

  LOBYTE(self) = [(SFAirDropTransfer *)self updateUsingCoder:v9];
  [v9 finishDecoding];

  return self;
}

- (BOOL)updateUsingCoder:(id)coder
{
  v55[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  identifier = [(SFAirDropTransfer *)self identifier];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SFAirDropTransfer *)self setIdentifier:v6];

  identifier2 = [(SFAirDropTransfer *)self identifier];
  v53 = SFNilEqual(identifier, identifier2);

  metaData = [(SFAirDropTransfer *)self metaData];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
  [(SFAirDropTransfer *)self setMetaData:v9];

  metaData2 = [(SFAirDropTransfer *)self metaData];
  v52 = SFNilEqual(metaData, metaData2);

  userResponse = [(SFAirDropTransfer *)self userResponse];
  -[SFAirDropTransfer setUserResponse:](self, "setUserResponse:", [coderCopy decodeIntegerForKey:@"userResponse"]);
  v51 = userResponse != [(SFAirDropTransfer *)self userResponse];
  transferState = [(SFAirDropTransfer *)self transferState];
  -[SFAirDropTransfer setTransferState:](self, "setTransferState:", [coderCopy decodeIntegerForKey:@"transferState"]);
  v50 = transferState != [(SFAirDropTransfer *)self transferState];
  failureReason = [(SFAirDropTransfer *)self failureReason];
  -[SFAirDropTransfer setFailureReason:](self, "setFailureReason:", [coderCopy decodeIntegerForKey:@"failureReason"]);
  v49 = failureReason != [(SFAirDropTransfer *)self failureReason];
  error = [(SFAirDropTransfer *)self error];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(SFAirDropTransfer *)self setError:v15];

  error2 = [(SFAirDropTransfer *)self error];
  v48 = SFNilEqual(error, error2);

  contentsTitle = [(SFAirDropTransfer *)self contentsTitle];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentsTitle"];
  [(SFAirDropTransfer *)self setContentsTitle:v18];

  contentsTitle2 = [(SFAirDropTransfer *)self contentsTitle];
  v47 = SFNilEqual(contentsTitle, contentsTitle2);

  contentsDescription = [(SFAirDropTransfer *)self contentsDescription];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentsDescription"];
  [(SFAirDropTransfer *)self setContentsDescription:v21];

  contentsDescription2 = [(SFAirDropTransfer *)self contentsDescription];
  v46 = SFNilEqual(contentsDescription, contentsDescription2);

  selectedAction = [(SFAirDropTransfer *)self selectedAction];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedAction"];
  [(SFAirDropTransfer *)self setSelectedAction:v24];

  selectedAction2 = [(SFAirDropTransfer *)self selectedAction];
  v45 = SFNilEqual(selectedAction, selectedAction2);

  possibleActions = [(SFAirDropTransfer *)self possibleActions];

  v27 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v29 = [v27 setWithArray:v28];
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"possibleActions"];
  [(SFAirDropTransfer *)self setPossibleActions:v30];

  possibleActions2 = [(SFAirDropTransfer *)self possibleActions];
  v32 = SFNilEqual(possibleActions, possibleActions2);

  cancelAction = [(SFAirDropTransfer *)self cancelAction];

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelAction"];
  [(SFAirDropTransfer *)self setCancelAction:v34];

  cancelAction2 = [(SFAirDropTransfer *)self cancelAction];
  v36 = SFNilEqual(cancelAction, cancelAction2);

  LOBYTE(cancelAction2) = [(SFAirDropTransfer *)self willOpenInMRQL];
  -[SFAirDropTransfer setWillOpenInMRQL:](self, "setWillOpenInMRQL:", [coderCopy decodeBoolForKey:@"willOpenInMRQL"]);
  LOBYTE(possibleActions2) = [(SFAirDropTransfer *)self willOpenInMRQL];
  completedURLs = [(SFAirDropTransfer *)self completedURLs];

  v38 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v40 = [v38 setWithArray:v39];
  v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"completedURLs"];

  [(SFAirDropTransfer *)self setCompletedURLs:v41];
  completedURLs2 = [(SFAirDropTransfer *)self completedURLs];
  LOBYTE(self) = SFNilEqual(completedURLs, completedURLs2);

  v43 = *MEMORY[0x1E69E9840];
  return (v51 || (v53 & v52 & 1) == 0 || v50 || v49 || (v48 & v47 & v46 & v45 & v32 & v36 & 1) == 0) | (cancelAction2 ^ possibleActions2) & 1 | ((self & 1) == 0);
}

- (void)updateWithInformation:(id)information
{
  v25 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = [informationCopy objectForKeyedSubscript:@"Items"];
  [(SFAirDropTransfer *)self setCompletedURLs:v5];

  v6 = [informationCopy objectForKeyedSubscript:@"Error"];
  [(SFAirDropTransfer *)self setError:v6];

  error = [(SFAirDropTransfer *)self error];

  if (error && self->_usedByTransferManager)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      error2 = [(SFAirDropTransfer *)self error];
      v19 = 138543618;
      v20 = identifier;
      v21 = 2112;
      v22 = error2;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] updateWithInformation: Error was set: %@", &v19, 0x16u);
    }
  }

  v11 = [informationCopy objectForKeyedSubscript:@"TotalBytes"];
  v12 = v11;
  if (v11)
  {
    -[NSProgress setTotalUnitCount:](self->_transferProgress, "setTotalUnitCount:", [v11 longLongValue]);
  }

  v13 = [informationCopy objectForKeyedSubscript:@"BytesCopied"];
  if (v13)
  {
    if (self->_usedByTransferManager)
    {
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = self->_identifier;
        v19 = 138543874;
        v20 = v15;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Updating completedUnitCount: %@ bytesCopied / %@ totalBytes", &v19, 0x20u);
      }
    }

    -[NSProgress setCompletedUnitCount:](self->_transferProgress, "setCompletedUnitCount:", [v13 longLongValue]);
  }

  v16 = [informationCopy objectForKeyedSubscript:@"TimeRemaining"];
  if (v16)
  {
    [(NSProgress *)self->_transferProgress setUserInfoObject:v16 forKey:*MEMORY[0x1E696A808]];
  }

  v17 = [informationCopy objectForKeyedSubscript:@"FilesCopied"];
  if (v17)
  {
    [(NSProgress *)self->_transferProgress setUserInfoObject:v17 forKey:*MEMORY[0x1E696A810]];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setUserResponse:(unint64_t)response
{
  v21 = *MEMORY[0x1E69E9840];
  userResponse = self->_userResponse;
  if (userResponse != response)
  {
    if (userResponse > 3)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E788C258[userResponse];
    }

    if (response > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_1E788C258[response];
    }

    usedByTransferManager = self->_usedByTransferManager;
    if (self->_userResponse < response)
    {
      if (self->_usedByTransferManager)
      {
        v9 = airdrop_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          identifier = self->_identifier;
          v15 = 138543874;
          v16 = identifier;
          v17 = 2112;
          v18 = v6;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Changing user response from %@ to %@", &v15, 0x20u);
        }
      }

      v11 = NSStringFromSelector(sel_userResponse);
      [(SFAirDropTransfer *)self willChangeValueForKey:v11];

      self->_userResponse = response;
      v12 = NSStringFromSelector(sel_userResponse);
      [(SFAirDropTransfer *)self didChangeValueForKey:v12];
LABEL_17:

      goto LABEL_18;
    }

    if (self->_usedByTransferManager)
    {
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_identifier;
        v15 = 138543874;
        v16 = v14;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_1A9662000, v12, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Cannot change userResponse from %@ to %@", &v15, 0x20u);
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setTransferState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  transferState = self->_transferState;
  if (transferState != state)
  {
    v6 = SFAirDropTransferStateToString(transferState);
    v7 = SFAirDropTransferStateToString(state);
    usedByTransferManager = self->_usedByTransferManager;
    if (self->_transferState >= state)
    {
      if (!self->_usedByTransferManager)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        v15 = 138543874;
        v16 = identifier;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_1A9662000, v12, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Cannot change transferState from %@ to %@", &v15, 0x20u);
      }
    }

    else
    {
      if (self->_usedByTransferManager)
      {
        v9 = airdrop_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = self->_identifier;
          v15 = 138543874;
          v16 = v10;
          v17 = 2112;
          v18 = v6;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Changing transfer state from %@ to %@", &v15, 0x20u);
        }
      }

      v11 = NSStringFromSelector(sel_transferState);
      [(SFAirDropTransfer *)self willChangeValueForKey:v11];

      self->_transferState = state;
      v12 = NSStringFromSelector(sel_transferState);
      [(SFAirDropTransfer *)self didChangeValueForKey:v12];
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setFailureReason:(unint64_t)reason
{
  v19 = *MEMORY[0x1E69E9840];
  failureReason = self->_failureReason;
  if (failureReason != reason)
  {
    if (failureReason - 1 > 2)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E788C278[failureReason - 1];
    }

    if (reason - 1 > 2)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_1E788C278[reason - 1];
    }

    if (self->_usedByTransferManager)
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        v13 = 138543874;
        v14 = identifier;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Setting failure reason from %@ to %@", &v13, 0x20u);
      }
    }

    v10 = NSStringFromSelector(sel_failureReason);
    [(SFAirDropTransfer *)self willChangeValueForKey:v10];

    self->_failureReason = reason;
    v11 = NSStringFromSelector(sel_failureReason);
    [(SFAirDropTransfer *)self didChangeValueForKey:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)keyPathsForValuesAffectingNeedsAction
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSStringFromSelector(sel_selectedAction);
  v10 = v3;
  v4 = NSStringFromSelector(sel_possibleActions);
  v11 = v4;
  v5 = NSStringFromSelector(sel_userResponse);
  v12 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
  v7 = [v2 setWithArray:{v6, v10, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)needsAction
{
  selectedAction = [(SFAirDropTransfer *)self selectedAction];
  if (selectedAction)
  {
    v4 = [(SFAirDropTransfer *)self userResponse]== 0;
  }

  else
  {
    possibleActions = [(SFAirDropTransfer *)self possibleActions];
    if ([possibleActions count])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(SFAirDropTransfer *)self userResponse]== 0;
    }
  }

  return v4;
}

- (void)setUpProgressToBroadcast:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] [Transfer: %{public}@] Failed to set up progress object (Downloads URL not available)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 identifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Progress token not available.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end