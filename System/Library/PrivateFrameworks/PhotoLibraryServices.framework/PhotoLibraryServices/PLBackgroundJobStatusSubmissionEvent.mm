@interface PLBackgroundJobStatusSubmissionEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusSubmissionEvent

- (id)statusDump
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(PLBackgroundJobStatusSubmissionEvent *)self submittedTask])
  {
    submittedPriorities = [(PLBackgroundJobStatusSubmissionEvent *)self submittedPriorities];
    [v3 appendFormat:@"%@ task submitted by ", submittedPriorities];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    workersResponsible = [(PLBackgroundJobStatusSubmissionEvent *)self workersResponsible];
    v6 = [workersResponsible countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(workersResponsible);
          }

          [v3 appendFormat:@"%@ ", *(*(&v15 + 1) + 8 * i)];
        }

        v7 = [workersResponsible countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v3 appendString:@"All workers reported no work to do"];
  }

  v10 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = PLBackgroundJobStatusSubmissionEvent;
  statusDump = [(PLBackgroundJobStatusEvent *)&v14 statusDump];
  v12 = [v10 stringWithFormat:@"%@ - %@\n", statusDump, v3];

  return v12;
}

@end