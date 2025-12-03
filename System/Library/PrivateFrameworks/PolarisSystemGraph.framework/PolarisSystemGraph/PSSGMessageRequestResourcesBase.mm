@interface PSSGMessageRequestResourcesBase
- ($995AEC83619B72959345773A9004CE00)serialize;
- (BOOL)isEqual:(id)equal;
- (PSSGMessageRequestResourcesBase)initWithRawMessage:(pssg_tx_s *)message;
- (PSSGMessageRequestResourcesBase)initWithType:(unint64_t)type sender:(id)sender request:(id)request;
- (PSSGResourceRequest)request;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGMessageRequestResourcesBase

- (PSSGMessageRequestResourcesBase)initWithType:(unint64_t)type sender:(id)sender request:(id)request
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = PSSGMessageRequestResourcesBase;
  v9 = [(PSSGMessageBase *)&v16 initWithType:type string1:sender];
  if (v9)
  {
    resourcesWantedWithStrides = [requestCopy resourcesWantedWithStrides];
    wantedResources = v9->_wantedResources;
    v9->_wantedResources = resourcesWantedWithStrides;

    resourcesNoLongerWantedWithStrides = [requestCopy resourcesNoLongerWantedWithStrides];
    noLongerWantedResources = v9->_noLongerWantedResources;
    v9->_noLongerWantedResources = resourcesNoLongerWantedWithStrides;

    v14 = v9;
  }

  return v9;
}

- (PSSGMessageRequestResourcesBase)initWithRawMessage:(pssg_tx_s *)message
{
  type = message->type;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:message->string1];
  v7 = [(PSSGMessageBase *)self initWithType:type string1:v6];

  if (v7)
  {
    if ((message->header.header.msgh_bits & 0x80000000) != 0 && message->header.body.msgh_descriptor_count == 1 && HIBYTE(message->header.ool_port_data.guarded_port.context) == 1)
    {
      countArray1 = message->var0.var0.countArray1;
      countArray2 = message->var0.var0.countArray2;
      v10 = *(&message->header.body + 1);
      if (countArray1)
      {
        v29 = message->var0.var0.countArray2;
        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:countArray1];
        v30 = countArray1;
        v12 = (v10 + 260);
        do
        {
          if (*(v12 - 1))
          {
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
          }

          else
          {
            v13 = 0;
          }

          if (*v12)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
          }

          else
          {
            v14 = 0;
          }

          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12 - 260];
          v16 = [PSSGResourceRequestEntry entryWithKey:v15 stride:v13 graphName:v14];
          [(NSArray *)v11 addObject:v16];

          v12 += 516;
          --countArray1;
        }

        while (countArray1);
        countArray1 = v30;
        countArray2 = v29;
        if (v29)
        {
LABEL_15:
          v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:countArray2];
          v31 = countArray2 + countArray1;
          if (countArray2 + countArray1 > countArray1)
          {
            v18 = countArray1;
            v19 = (v10 + 516 * countArray1 + 260);
            do
            {
              if (*(v19 - 1))
              {
                v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
              }

              else
              {
                v20 = 0;
              }

              if (*v19)
              {
                v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
              }

              else
              {
                v21 = 0;
              }

              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19 - 260];
              v23 = [PSSGResourceRequestEntry entryWithKey:v22 stride:v20 graphName:v21];
              [(NSArray *)v17 addObject:v23];

              ++v18;
              v19 += 516;
            }

            while (v31 > v18);
          }

          goto LABEL_26;
        }
      }

      else
      {
        v11 = 0;
        if (countArray2)
        {
          goto LABEL_15;
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
      v11 = 0;
    }

LABEL_26:
    wantedResources = v7->_wantedResources;
    v7->_wantedResources = v11;
    v25 = v11;

    noLongerWantedResources = v7->_noLongerWantedResources;
    v7->_noLongerWantedResources = v17;

    v27 = v7;
  }

  return v7;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v57 = *MEMORY[0x277D85DE8];
  *&self->super._serializedMessage.message.header.header.msgh_bits = 0u;
  p_serializedMessage = &self->super._serializedMessage;
  *&self->super._serializedMessage.message.string1[184] = 0u;
  *&self->super._serializedMessage.message.string1[168] = 0u;
  *&self->super._serializedMessage.message.string1[152] = 0u;
  *&self->super._serializedMessage.message.string1[136] = 0u;
  *&self->super._serializedMessage.message.string1[120] = 0u;
  *&self->super._serializedMessage.message.string1[104] = 0u;
  *&self->super._serializedMessage.message.string1[88] = 0u;
  *&self->super._serializedMessage.message.string1[72] = 0u;
  *&self->super._serializedMessage.message.string1[56] = 0u;
  *&self->super._serializedMessage.message.string1[40] = 0u;
  *&self->super._serializedMessage.message.string1[24] = 0u;
  *&self->super._serializedMessage.message.string1[8] = 0u;
  *&self->super._serializedMessage.message.type = 0u;
  self->super._serializedMessage.message.header.ool_port_data = 0u;
  *&self->super._serializedMessage.message.header.header.msgh_voucher_port = 0u;
  *(&self->super._serializedMessage.message.var0.var2 + 1) = 0u;
  *&self->super._serializedMessage.pid = 0u;
  *&self->super._serializedMessage.message.string1[232] = 0u;
  *&self->super._serializedMessage.message.string1[248] = 0u;
  *&self->super._serializedMessage.message.string1[200] = 0u;
  *&self->super._serializedMessage.message.string1[216] = 0u;
  self->super._serializedMessage.message.type = [(PSSGMessageBase *)self type];
  string1 = [(PSSGMessageBase *)self string1];
  [string1 UTF8String];
  __strlcpy_chk();

  wantedResources = [(PSSGMessageRequestResourcesBase *)self wantedResources];
  self->super._serializedMessage.message.var0.var0.countArray1 = [wantedResources count];

  noLongerWantedResources = [(PSSGMessageRequestResourcesBase *)self noLongerWantedResources];
  self->super._serializedMessage.message.var0.var0.countArray2 = [noLongerWantedResources count];

  wantedResources2 = [(PSSGMessageRequestResourcesBase *)self wantedResources];
  v8 = [wantedResources2 count];
  noLongerWantedResources2 = [(PSSGMessageRequestResourcesBase *)self noLongerWantedResources];
  v10 = [noLongerWantedResources2 count] + v8;

  if (v10)
  {
    v11 = [MEMORY[0x277CBEB28] dataWithLength:516 * v10];
    mutableBytes = [v11 mutableBytes];
    if (!mutableBytes)
    {
      [PSSGMessageBase serialize];
    }

    v13 = mutableBytes;
    v43 = v11;
    v44 = p_serializedMessage;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    wantedResources3 = [(PSSGMessageRequestResourcesBase *)self wantedResources];
    v15 = [wantedResources3 countByEnumeratingWithState:&v51 objects:v56 count:16];
    v45 = v13;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v52;
      v19 = v13 + 256;
      do
      {
        v20 = 0;
        v21 = v19 + 516 * v17;
        v17 += v16;
        do
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(wantedResources3);
          }

          v22 = *(*(&v51 + 1) + 8 * v20);
          resourceKey = [v22 resourceKey];
          [resourceKey UTF8String];
          __strlcpy_chk();

          stride = [v22 stride];
          if (stride)
          {
            stride2 = [v22 stride];
            *v21 = [stride2 unsignedIntValue];
          }

          else
          {
            *v21 = 0;
          }

          graphName = [v22 graphName];
          if (graphName)
          {
            graphName2 = [v22 graphName];
            strlcpy((v21 + 4), [graphName2 UTF8String], 0x100uLL);
          }

          else
          {
            *(v21 + 4) = 0;
          }

          ++v20;
          v21 += 516;
        }

        while (v16 != v20);
        v16 = [wantedResources3 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    noLongerWantedResources3 = [(PSSGMessageRequestResourcesBase *)selfCopy noLongerWantedResources];
    v29 = [noLongerWantedResources3 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        v32 = 0;
        v33 = v45 + 516 * v17 + 256;
        v17 += v30;
        do
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(noLongerWantedResources3);
          }

          v34 = *(*(&v47 + 1) + 8 * v32);
          resourceKey2 = [v34 resourceKey];
          [resourceKey2 UTF8String];
          __strlcpy_chk();

          stride3 = [v34 stride];
          if (stride3)
          {
            stride4 = [v34 stride];
            *v33 = [stride4 unsignedIntValue];
          }

          else
          {
            *v33 = 0;
          }

          graphName3 = [v34 graphName];
          if (graphName3)
          {
            graphName4 = [v34 graphName];
            strlcpy((v33 + 4), [graphName4 UTF8String], 0x100uLL);
          }

          else
          {
            *(v33 + 4) = 0;
          }

          ++v32;
          v33 += 516;
        }

        while (v30 != v32);
        v30 = [noLongerWantedResources3 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v30);
    }

    [(PSSGMessageBase *)selfCopy setData:v43];
    selfCopy->super._serializedMessage.var0.oolData = v45;
    data = [(PSSGMessageBase *)selfCopy data];
    selfCopy->super._serializedMessage.oolDataLength = [data length];

    selfCopy->super._serializedMessage.message.var0.var0.dataLength = selfCopy->super._serializedMessage.oolDataLength;
    p_serializedMessage = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
  return p_serializedMessage;
}

- (PSSGResourceRequest)request
{
  v3 = objc_alloc_init(PSSGResourceRequest);
  [(PSSGResourceRequest *)v3 setResourcesWanted:0];
  [(PSSGResourceRequest *)v3 setResourcesNoLongerWanted:0];
  wantedResources = [(PSSGMessageRequestResourcesBase *)self wantedResources];
  [(PSSGResourceRequest *)v3 setResourcesWantedWithStrides:wantedResources];

  noLongerWantedResources = [(PSSGMessageRequestResourcesBase *)self noLongerWantedResources];
  [(PSSGResourceRequest *)v3 setResourcesNoLongerWantedWithStrides:noLongerWantedResources];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()] && (v6 = -[PSSGMessageBase type](self, "type"), v6 == objc_msgSend(equalCopy, "type")))
  {
    string1 = [(PSSGMessageBase *)self string1];
    string12 = [equalCopy string1];
    if ([string1 isEqual:string12])
    {
      request = [(PSSGMessageRequestResourcesBase *)self request];
      request2 = [equalCopy request];
      v11 = [request isEqual:request2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  type = [(PSSGMessageBase *)self type];
  string1 = [(PSSGMessageBase *)self string1];
  v5 = [string1 hash] ^ type;
  request = [(PSSGMessageRequestResourcesBase *)self request];
  v7 = [request hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  string1 = [(PSSGMessageBase *)self string1];
  request = [(PSSGMessageRequestResourcesBase *)self request];
  v8 = [v3 stringWithFormat:@"<%@: %p, sender %@, request %@>", v5, self, string1, request];

  return v8;
}

@end