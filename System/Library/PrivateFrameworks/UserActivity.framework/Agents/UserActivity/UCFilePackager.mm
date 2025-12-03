@interface UCFilePackager
- (BOOL)deliverNextPacket;
- (UCFilePackager)initWithFile:(id)file fileSize:(int64_t)size packetSize:(int64_t)packetSize options:(id)options receiver:(id)receiver;
- (UCFilePacketReceiver)receiver;
- (void)checkShouldFetch;
- (void)prepNextPacket;
@end

@implementation UCFilePackager

- (UCFilePackager)initWithFile:(id)file fileSize:(int64_t)size packetSize:(int64_t)packetSize options:(id)options receiver:(id)receiver
{
  fileCopy = file;
  optionsCopy = options;
  receiverCopy = receiver;
  v21.receiver = self;
  v21.super_class = UCFilePackager;
  v15 = [(UCFilePackager *)&v21 init];
  v16 = v15;
  if (v15)
  {
    [(UCFilePackager *)v15 setFile:fileCopy];
    [(UCFilePackager *)v16 setOptions:optionsCopy];
    [(UCFilePackager *)v16 setPacketSize:packetSize];
    [(UCFilePackager *)v16 setTotalPacketCount:vcvtpd_s64_f64(size / packetSize)];
    [(UCFilePackager *)v16 setCurrentPacketNumber:0];
    [(UCFilePackager *)v16 setNextPacketNumber:1];
    [(UCFilePackager *)v16 setNextPacketToDeliver:1];
    v17 = dispatch_queue_create("UCFilePackagerReadQ", 0);
    [(UCFilePackager *)v16 setFetchQ:v17];

    v18 = dispatch_semaphore_create(0);
    [(UCFilePackager *)v16 setNextPacketReady:v18];

    [(UCFilePackager *)v16 setPacketPreLoadCount:2];
    v19 = [NSMutableArray arrayWithCapacity:[(UCFilePackager *)v16 packetPreLoadCount]];
    [(UCFilePackager *)v16 setQueuedPackets:v19];

    [(UCFilePackager *)v16 setReceiver:receiverCopy];
    [(UCFilePackager *)v16 checkShouldFetch];
  }

  return v16;
}

- (BOOL)deliverNextPacket
{
  nextPacketToDeliver = [(UCFilePackager *)self nextPacketToDeliver];
  totalPacketCount = [(UCFilePackager *)self totalPacketCount];
  if (nextPacketToDeliver <= totalPacketCount)
  {
    if (sub_10003F738([(UCFilePackager *)self nextPacketToDeliver], [(UCFilePackager *)self totalPacketCount]))
    {
      v5 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        nextPacketToDeliver2 = [(UCFilePackager *)self nextPacketToDeliver];
        v11 = 1024;
        totalPacketCount2 = [(UCFilePackager *)self totalPacketCount];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Packager] Queuing delivery block %d/%d", buf, 0xEu);
      }
    }

    v6 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037958;
    block[3] = &unk_1000C4CC0;
    block[4] = self;
    dispatch_async(v6, block);
  }

  return nextPacketToDeliver <= totalPacketCount;
}

- (void)prepNextPacket
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nextPacketNumber = [(UCFilePackager *)selfCopy nextPacketNumber];
  if (nextPacketNumber <= [(UCFilePackager *)selfCopy totalPacketCount])
  {
    nextPacketNumber2 = [(UCFilePackager *)selfCopy nextPacketNumber];
    [(UCFilePackager *)selfCopy setNextPacketNumber:[(UCFilePackager *)selfCopy nextPacketNumber]+ 1];
  }

  else
  {
    nextPacketNumber2 = -1;
  }

  objc_sync_exit(selfCopy);

  if (nextPacketNumber2 >= 1)
  {
    fetchQ = [(UCFilePackager *)selfCopy fetchQ];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100037CF8;
    v6[3] = &unk_1000C5750;
    v6[4] = selfCopy;
    v6[5] = nextPacketNumber2;
    dispatch_async(fetchQ, v6);
  }
}

- (void)checkShouldFetch
{
  queuedPackets = [(UCFilePackager *)self queuedPackets];
  objc_sync_enter(queuedPackets);
  queuedPackets2 = [(UCFilePackager *)self queuedPackets];
  v5 = [queuedPackets2 count];
  packetPreLoadCount = [(UCFilePackager *)self packetPreLoadCount];

  objc_sync_exit(queuedPackets);
  if (v5 < packetPreLoadCount)
  {

    [(UCFilePackager *)self prepNextPacket];
  }
}

- (UCFilePacketReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

@end