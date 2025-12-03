@interface SUPostConcernOperation
- (SUPostConcernOperation)initWithConcern:(id)concern;
- (id)_httpBody;
- (void)dealloc;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)run;
@end

@implementation SUPostConcernOperation

- (SUPostConcernOperation)initWithConcern:(id)concern
{
  v4 = [(SUPostConcernOperation *)self init];
  v5 = v4;
  if (v4)
  {
    [(SUPostConcernOperation *)v4 setConcern:concern];
  }

  return v5;
}

- (void)dealloc
{
  [(SUPostConcernOperation *)self setCommentText:0];
  [(SUPostConcernOperation *)self setConcern:0];
  v3.receiver = self;
  v3.super_class = SUPostConcernOperation;
  [(SUPostConcernOperation *)&v3 dealloc];
}

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v3 setDataProvider:{objc_msgSend(MEMORY[0x1E69E47B8], "provider")}];
  [v3 setDelegate:self];
  [v3 setNeedsAuthentication:1];
  v4 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v4 setCachePolicy:1];
  [v4 setHTTPBody:{-[SUPostConcernOperation _httpBody](self, "_httpBody")}];
  [v4 setHTTPMethod:@"POST"];
  [v4 setURLBagKey:@"p2-report-concern"];
  [v3 setRequestProperties:v4];

  v5 = 0;
  if (([(SUPostConcernOperation *)self runSubOperation:v3 returningError:&v5]& 1) == 0)
  {
    [(SUPostConcernOperation *)self setError:v5];
  }

  [v3 setDelegate:0];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [output objectForKey:@"success"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 BOOLValue])
  {

    [(SUPostConcernOperation *)self setSuccess:1];
  }

  else if (![output objectForKey:*MEMORY[0x1E69E4828]])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      LODWORD(v12) = 12;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v12}];
        free(v11);
        SSFileLog();
      }
    }

    [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CONCERN_POST_FAILED_ERROR", &stru_1F41B3660, 0}];
    [(SUPostConcernOperation *)self setError:ISError()];
  }
}

- (id)_httpBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  commentText = [(SUPostConcernOperation *)self commentText];
  if (commentText)
  {
    [v3 setObject:commentText forKey:@"comments"];
  }

  if (self->_itemIdentifier)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%llu", self->_itemIdentifier), @"item-id"}];
  }

  identifier = [(SUConcernItem *)[(SUPostConcernOperation *)self concern] identifier];
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"problem-id"];
  }

  v6 = [MEMORY[0x1E695DFF8] queryStringForDictionary:v3 escapedValues:1];

  return [v6 dataUsingEncoding:4];
}

@end