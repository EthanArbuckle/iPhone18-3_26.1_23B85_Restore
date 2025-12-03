@interface PLPersistentHistoryDistributionEvent
- (NSString)eventDescription;
- (void)reset;
- (void)startDistributionWithReason:(id)reason;
@end

@implementation PLPersistentHistoryDistributionEvent

- (NSString)eventDescription
{
  reason = [(PLPersistentHistoryDistributionEvent *)self reason];
  if (reason)
  {
    v4 = objc_alloc(MEMORY[0x1E69BDD70]);
    [(PFAbstractStateCaptureEvent *)self startTimestamp];
    v5 = [v4 initWithStartTimestamp:?];
    v6 = [v5 appendString:@" thr: "];
    v7 = [v6 appendThreadID:{-[PFAbstractStateCaptureEvent threadID](self, "threadID")}];

    v8 = [v5 appendString:@" qos: "];
    v9 = [v8 appendQoSClass:{-[PFAbstractStateCaptureEvent qosClass](self, "qosClass")}];

    v10 = [v5 appendString:@" distribute: "];
    v11 = [v10 appendString:reason];

    v12 = [v5 appendString:@" obs: "];
    v13 = [v12 appendUnsignedInteger:{-[PLPersistentHistoryDistributionEvent observerCount](self, "observerCount")}];

    v14 = [v5 appendString:@" dist: "];
    v15 = [v14 appendBool:{-[PLPersistentHistoryDistributionEvent shouldDistributeTransactions](self, "shouldDistributeTransactions")}];

    v16 = [v5 appendString:@" last tx#: "];
    lastTransaction = [(PLPersistentHistoryDistributionEvent *)self lastTransaction];
    v18 = [v16 appendNumber:lastTransaction];

    v19 = [v5 appendString:@" itr: "];
    v20 = [v19 appendPointer:{-[PLPersistentHistoryDistributionEvent iteratorPointer](self, "iteratorPointer")}];

    v21 = [v5 appendString:@" uir: "];
    v22 = [v21 appendBool:{-[PLPersistentHistoryDistributionEvent forceUserInterfaceReload](self, "forceUserInterfaceReload")}];

    v23 = [v5 appendString:@" txc: "];
    v24 = [v23 appendUnsignedInteger:{-[PLPersistentHistoryDistributionEvent transactionCount](self, "transactionCount")}];

    v25 = [v5 appendString:@" evc: "];
    v26 = [v25 appendUnsignedInteger:{-[PLPersistentHistoryDistributionEvent localEventCount](self, "localEventCount")}];

    v27 = [v5 appendString:@" unk: "];
    v28 = [v27 appendBool:{-[PLPersistentHistoryDistributionEvent unknownMergeEvent](self, "unknownMergeEvent")}];

    v29 = [v5 appendString:@" itr tx#: "];
    iteratedTransaction = [(PLPersistentHistoryDistributionEvent *)self iteratedTransaction];
    v31 = [v29 appendNumber:iteratedTransaction];

    [(PLPersistentHistoryDistributionEvent *)self mergeTimestamp];
    if (v32 > 0.0)
    {
      v33 = v32;
      v34 = [v5 appendString:@" merge: "];
      v35 = [v34 appendRelativeTimestamp:v33];

      v36 = [v5 appendString:@" "];
      v37 = [v36 appendThreadID:{-[PLPersistentHistoryDistributionEvent mergeThreadID](self, "mergeThreadID")}];

      v38 = [v5 appendString:@" inv: "];
      v39 = [v38 appendBool:{-[PLPersistentHistoryDistributionEvent mergeInvalidated](self, "mergeInvalidated")}];

      v40 = [v5 appendString:@" ctxc: "];
      v41 = [v40 appendUnsignedInteger:{-[PLPersistentHistoryDistributionEvent mergedContextCount](self, "mergedContextCount")}];

      v42 = [v5 appendString:@" relc: "];
      v43 = [v42 appendUnsignedInteger:{-[PLPersistentHistoryDistributionEvent releventContextCount](self, "releventContextCount")}];

      v44 = [v5 appendString:@" post: "];
      [(PLPersistentHistoryDistributionEvent *)self postTimestamp];
      v45 = [v44 appendRelativeTimestamp:?];
    }

    [(PFAbstractStateCaptureEvent *)self endTimestamp];
    v46 = [v5 appendEndTimestamp:?];
    v47 = [v5 description];
  }

  else
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unused: %p>", self];
  }

  return v47;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PLPersistentHistoryDistributionEvent;
  [(PFAbstractStateCaptureEvent *)&v3 reset];
  [(PLPersistentHistoryDistributionEvent *)self setReason:0];
  [(PLPersistentHistoryDistributionEvent *)self setObserverCount:0];
  [(PLPersistentHistoryDistributionEvent *)self setShouldDistributeTransactions:0];
  [(PLPersistentHistoryDistributionEvent *)self setLastTransaction:0];
  [(PLPersistentHistoryDistributionEvent *)self setIteratorPointer:0];
  [(PLPersistentHistoryDistributionEvent *)self setForceUserInterfaceReload:0];
  [(PLPersistentHistoryDistributionEvent *)self setTransactionCount:0];
  [(PLPersistentHistoryDistributionEvent *)self setLocalEventCount:0];
  [(PLPersistentHistoryDistributionEvent *)self setUnknownMergeEvent:0];
  [(PLPersistentHistoryDistributionEvent *)self setIteratedTransaction:0];
  [(PLPersistentHistoryDistributionEvent *)self setMergeTimestamp:0.0];
  [(PLPersistentHistoryDistributionEvent *)self setMergeThreadID:0];
  [(PLPersistentHistoryDistributionEvent *)self setMergeInvalidated:0];
  [(PLPersistentHistoryDistributionEvent *)self setMergedContextCount:0];
  [(PLPersistentHistoryDistributionEvent *)self setReleventContextCount:0];
  [(PLPersistentHistoryDistributionEvent *)self setPostTimestamp:0.0];
}

- (void)startDistributionWithReason:(id)reason
{
  reasonCopy = reason;
  [(PFAbstractStateCaptureEvent *)self setInitialValues];
  [(PLPersistentHistoryDistributionEvent *)self setReason:reasonCopy];
}

@end