@interface GRPSchemaSiriEventTypeUnion
+ (Class)getEventTypeClassForTag:(int)tag;
+ (id)getTagForEventTypeClass:(Class)class;
- (ANCSchemaANCClientEvent)ancClientEvent;
- (ASRSchemaASRClientEvent)asrClientEvent;
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARClientEvent)caarClientEvent;
- (CAMSchemaCAMClientEvent)camClientEvent;
- (CDASchemaCDAClientEvent)cdaClientEvent;
- (CLPInstSchemaCLPClientEvent)clpClientEvent;
- (CNVSchemaCNVClientEvent)cnvClientEvent;
- (DIMSchemaDIMClientEvent)dimClientEvent;
- (DODMLSchemaDODMLClientEvent)dodmlClientEvent;
- (EXPSearchSchemaEXPSearchClientEvent)expSearchClientEvent;
- (EXPSiriSchemaEXPSiriClientEvent)expSiriClientEvent;
- (FLOWLINKSchemaFLOWLINKClientEvent)flowLinkClientEvent;
- (FLOWSchemaFLOWClientEvent)flowClientEvent;
- (GRPSchemaSiriEventTypeUnion)initWithDictionary:(id)dictionary;
- (GRPSchemaSiriEventTypeUnion)initWithJSON:(id)n;
- (HALSchemaHALClientEvent)halClientEvent;
- (HOMESchemaHOMEClientEvent)homeClientEvent;
- (HomeKitSchemaHKClientEvent)homeKitClientEvent;
- (IHSchemaIHClientEvent)ihClientEvent;
- (INFERENCESchemaINFERENCEClientEvent)inferenceClientEvent;
- (LRSchemaLRClientEvent)lrClientEvent;
- (MHSchemaMHClientEvent)mhClientEvent;
- (MWTSchemaMWTClientEvent)mwtClientEvent;
- (NETSchemaNETClientEvent)netClientEvent;
- (NLXSchemaNLXClientEvent)nlxClientEvent;
- (NSData)jsonData;
- (OPTINSchemaOPTINClientEvent)optInClientEvent;
- (OPTINSchemaOPTINStatePropagationEvent)optinStatePropagationEvent;
- (ORCHSchemaORCHClientEvent)orchClientEvent;
- (PETSchemaPETUpload)petUploadEvent;
- (PLUSSchemaPLUSClientEvent)plusClientEvent;
- (POMMESSchemaPOMMESClientEvent)pommmesClientEvent;
- (RFGSchemaRFGClientEvent)rfgClientEvent;
- (RFSchemaRFClientEvent)rfClientEvent;
- (RRSchemaRRClientEvent)rrClientEvent;
- (RSSSchemaRSSClientEvent)rssClientEvent;
- (SADSchemaSADClientEvent)sadClientEvent;
- (SCSchemaSCClientEvent)scClientEvent;
- (SICSchemaSICClientEvent)sicClientEvent;
- (SIRISETUPSchemaSIRISETUPClientEvent)siriSetupClientEvent;
- (SISchemaClientEvent)ueiClientEvent;
- (SISchemaGradingOptInStateChange)gradingOptInStateChange;
- (SISchemaProvisionalEvent)provisionalEvent;
- (SISchemaRequestLink)requestLinkEvent;
- (SRSTSchemaSRSTClientEvent)srstClientEvent;
- (SUGSchemaSUGClientEvent)sugClientEvent;
- (SUTSchemaTestExecutionEvent)testExecutionEvent;
- (TTSSchemaTTSClientEvent)ttsClientEvent;
- (USPSchemaUSPClientEvent)uspClientEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getEventType;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAncClientEvent;
- (void)deleteAsrClientEvent;
- (void)deleteCaarClientEvent;
- (void)deleteCamClientEvent;
- (void)deleteCdaClientEvent;
- (void)deleteClpClientEvent;
- (void)deleteCnvClientEvent;
- (void)deleteDimClientEvent;
- (void)deleteDodmlClientEvent;
- (void)deleteExpSearchClientEvent;
- (void)deleteExpSiriClientEvent;
- (void)deleteFlowClientEvent;
- (void)deleteFlowLinkClientEvent;
- (void)deleteGradingOptInStateChange;
- (void)deleteHalClientEvent;
- (void)deleteHomeClientEvent;
- (void)deleteHomeKitClientEvent;
- (void)deleteIhClientEvent;
- (void)deleteInferenceClientEvent;
- (void)deleteLrClientEvent;
- (void)deleteMhClientEvent;
- (void)deleteMwtClientEvent;
- (void)deleteNetClientEvent;
- (void)deleteNlxClientEvent;
- (void)deleteOptInClientEvent;
- (void)deleteOptinStatePropagationEvent;
- (void)deleteOrchClientEvent;
- (void)deletePetUploadEvent;
- (void)deletePlusClientEvent;
- (void)deletePommmesClientEvent;
- (void)deleteProvisionalEvent;
- (void)deleteRequestLinkEvent;
- (void)deleteRfClientEvent;
- (void)deleteRfgClientEvent;
- (void)deleteRrClientEvent;
- (void)deleteRssClientEvent;
- (void)deleteSadClientEvent;
- (void)deleteScClientEvent;
- (void)deleteSicClientEvent;
- (void)deleteSiriSetupClientEvent;
- (void)deleteSrstClientEvent;
- (void)deleteSugClientEvent;
- (void)deleteTestExecutionEvent;
- (void)deleteTtsClientEvent;
- (void)deleteUeiClientEvent;
- (void)deleteUspClientEvent;
- (void)setAncClientEvent:(id)event;
- (void)setAsrClientEvent:(id)event;
- (void)setCaarClientEvent:(id)event;
- (void)setCamClientEvent:(id)event;
- (void)setCdaClientEvent:(id)event;
- (void)setClpClientEvent:(id)event;
- (void)setCnvClientEvent:(id)event;
- (void)setDimClientEvent:(id)event;
- (void)setDodmlClientEvent:(id)event;
- (void)setEventType:(id)type;
- (void)setExpSearchClientEvent:(id)event;
- (void)setExpSiriClientEvent:(id)event;
- (void)setFlowClientEvent:(id)event;
- (void)setFlowLinkClientEvent:(id)event;
- (void)setGradingOptInStateChange:(id)change;
- (void)setHalClientEvent:(id)event;
- (void)setHomeClientEvent:(id)event;
- (void)setHomeKitClientEvent:(id)event;
- (void)setIhClientEvent:(id)event;
- (void)setInferenceClientEvent:(id)event;
- (void)setLrClientEvent:(id)event;
- (void)setMhClientEvent:(id)event;
- (void)setMwtClientEvent:(id)event;
- (void)setNetClientEvent:(id)event;
- (void)setNlxClientEvent:(id)event;
- (void)setOptInClientEvent:(id)event;
- (void)setOptinStatePropagationEvent:(id)event;
- (void)setOrchClientEvent:(id)event;
- (void)setPetUploadEvent:(id)event;
- (void)setPlusClientEvent:(id)event;
- (void)setPommmesClientEvent:(id)event;
- (void)setProvisionalEvent:(id)event;
- (void)setRequestLinkEvent:(id)event;
- (void)setRfClientEvent:(id)event;
- (void)setRfgClientEvent:(id)event;
- (void)setRrClientEvent:(id)event;
- (void)setRssClientEvent:(id)event;
- (void)setSadClientEvent:(id)event;
- (void)setScClientEvent:(id)event;
- (void)setSicClientEvent:(id)event;
- (void)setSiriSetupClientEvent:(id)event;
- (void)setSrstClientEvent:(id)event;
- (void)setSugClientEvent:(id)event;
- (void)setTestExecutionEvent:(id)event;
- (void)setTtsClientEvent:(id)event;
- (void)setUeiClientEvent:(id)event;
- (void)setUspClientEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaSiriEventTypeUnion

- (id)getEventType
{
  v3 = self->_whichEvent_Type - 1;
  if (v3 > 0x2D)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + *off_1E78D7670[v3]);
  }

  return v4;
}

- (void)setEventType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GRPSchemaSiriEventTypeUnion *)self setUeiClientEvent:typeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(GRPSchemaSiriEventTypeUnion *)self setPetUploadEvent:typeCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GRPSchemaSiriEventTypeUnion *)self setProvisionalEvent:typeCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(GRPSchemaSiriEventTypeUnion *)self setTestExecutionEvent:typeCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(GRPSchemaSiriEventTypeUnion *)self setRequestLinkEvent:typeCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(GRPSchemaSiriEventTypeUnion *)self setFlowClientEvent:typeCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(GRPSchemaSiriEventTypeUnion *)self setCamClientEvent:typeCopy];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(GRPSchemaSiriEventTypeUnion *)self setUspClientEvent:typeCopy];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(GRPSchemaSiriEventTypeUnion *)self setDimClientEvent:typeCopy];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(GRPSchemaSiriEventTypeUnion *)self setNlxClientEvent:typeCopy];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(GRPSchemaSiriEventTypeUnion *)self setOrchClientEvent:typeCopy];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(GRPSchemaSiriEventTypeUnion *)self setAsrClientEvent:typeCopy];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(GRPSchemaSiriEventTypeUnion *)self setIhClientEvent:typeCopy];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [(GRPSchemaSiriEventTypeUnion *)self setMhClientEvent:typeCopy];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(GRPSchemaSiriEventTypeUnion *)self setTtsClientEvent:typeCopy];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [(GRPSchemaSiriEventTypeUnion *)self setClpClientEvent:typeCopy];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [(GRPSchemaSiriEventTypeUnion *)self setRrClientEvent:typeCopy];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [(GRPSchemaSiriEventTypeUnion *)self setCnvClientEvent:typeCopy];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(GRPSchemaSiriEventTypeUnion *)self setAncClientEvent:typeCopy];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [(GRPSchemaSiriEventTypeUnion *)self setHalClientEvent:typeCopy];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [(GRPSchemaSiriEventTypeUnion *)self setNetClientEvent:typeCopy];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [(GRPSchemaSiriEventTypeUnion *)self setSadClientEvent:typeCopy];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [(GRPSchemaSiriEventTypeUnion *)self setDodmlClientEvent:typeCopy];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [(GRPSchemaSiriEventTypeUnion *)self setPlusClientEvent:typeCopy];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [(GRPSchemaSiriEventTypeUnion *)self setExpSearchClientEvent:typeCopy];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [(GRPSchemaSiriEventTypeUnion *)self setExpSiriClientEvent:typeCopy];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [(GRPSchemaSiriEventTypeUnion *)self setSrstClientEvent:typeCopy];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [(GRPSchemaSiriEventTypeUnion *)self setPommmesClientEvent:typeCopy];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [(GRPSchemaSiriEventTypeUnion *)self setCdaClientEvent:typeCopy];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              [(GRPSchemaSiriEventTypeUnion *)self setMwtClientEvent:typeCopy];
                                                            }

                                                            else
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                [(GRPSchemaSiriEventTypeUnion *)self setHomeClientEvent:typeCopy];
                                                              }

                                                              else
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  [(GRPSchemaSiriEventTypeUnion *)self setGradingOptInStateChange:typeCopy];
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    [(GRPSchemaSiriEventTypeUnion *)self setOptinStatePropagationEvent:typeCopy];
                                                                  }

                                                                  else
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      [(GRPSchemaSiriEventTypeUnion *)self setRssClientEvent:typeCopy];
                                                                    }

                                                                    else
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        [(GRPSchemaSiriEventTypeUnion *)self setSugClientEvent:typeCopy];
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          [(GRPSchemaSiriEventTypeUnion *)self setFlowLinkClientEvent:typeCopy];
                                                                        }

                                                                        else
                                                                        {
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            [(GRPSchemaSiriEventTypeUnion *)self setRfClientEvent:typeCopy];
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              [(GRPSchemaSiriEventTypeUnion *)self setSicClientEvent:typeCopy];
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                [(GRPSchemaSiriEventTypeUnion *)self setInferenceClientEvent:typeCopy];
                                                                              }

                                                                              else
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  [(GRPSchemaSiriEventTypeUnion *)self setCaarClientEvent:typeCopy];
                                                                                }

                                                                                else
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    [(GRPSchemaSiriEventTypeUnion *)self setRfgClientEvent:typeCopy];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      [(GRPSchemaSiriEventTypeUnion *)self setScClientEvent:typeCopy];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        [(GRPSchemaSiriEventTypeUnion *)self setSiriSetupClientEvent:typeCopy];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          [(GRPSchemaSiriEventTypeUnion *)self setOptInClientEvent:typeCopy];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            [(GRPSchemaSiriEventTypeUnion *)self setLrClientEvent:typeCopy];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              [(GRPSchemaSiriEventTypeUnion *)self setHomeKitClientEvent:typeCopy];
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (GRPSchemaSiriEventTypeUnion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v139.receiver = self;
  v139.super_class = GRPSchemaSiriEventTypeUnion;
  v5 = [(GRPSchemaSiriEventTypeUnion *)&v139 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ueiClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaClientEvent alloc] initWithDictionary:v6];
      [(GRPSchemaSiriEventTypeUnion *)v5 setUeiClientEvent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"petUploadEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PETSchemaPETUpload alloc] initWithDictionary:v8];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPetUploadEvent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"provisionalEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaProvisionalEvent alloc] initWithDictionary:v10];
      [(GRPSchemaSiriEventTypeUnion *)v5 setProvisionalEvent:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"testExecutionEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUTSchemaTestExecutionEvent alloc] initWithDictionary:v12];
      [(GRPSchemaSiriEventTypeUnion *)v5 setTestExecutionEvent:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"requestLinkEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaRequestLink alloc] initWithDictionary:v14];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRequestLinkEvent:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"flowClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWClientEvent alloc] initWithDictionary:v16];
      [(GRPSchemaSiriEventTypeUnion *)v5 setFlowClientEvent:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"camClientEvent"];
    objc_opt_class();
    v138 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CAMSchemaCAMClientEvent alloc] initWithDictionary:v18];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCamClientEvent:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"uspClientEvent"];
    objc_opt_class();
    v137 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[USPSchemaUSPClientEvent alloc] initWithDictionary:v20];
      [(GRPSchemaSiriEventTypeUnion *)v5 setUspClientEvent:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"dimClientEvent"];
    objc_opt_class();
    v136 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[DIMSchemaDIMClientEvent alloc] initWithDictionary:v22];
      [(GRPSchemaSiriEventTypeUnion *)v5 setDimClientEvent:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"nlxClientEvent"];
    objc_opt_class();
    v135 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[NLXSchemaNLXClientEvent alloc] initWithDictionary:v24];
      [(GRPSchemaSiriEventTypeUnion *)v5 setNlxClientEvent:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"orchClientEvent"];
    objc_opt_class();
    v134 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ORCHSchemaORCHClientEvent alloc] initWithDictionary:v26];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOrchClientEvent:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"asrClientEvent"];
    objc_opt_class();
    v133 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ASRSchemaASRClientEvent alloc] initWithDictionary:v28];
      [(GRPSchemaSiriEventTypeUnion *)v5 setAsrClientEvent:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"ihClientEvent"];
    objc_opt_class();
    v132 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IHSchemaIHClientEvent alloc] initWithDictionary:v30];
      [(GRPSchemaSiriEventTypeUnion *)v5 setIhClientEvent:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"mhClientEvent"];
    objc_opt_class();
    v131 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[MHSchemaMHClientEvent alloc] initWithDictionary:v32];
      [(GRPSchemaSiriEventTypeUnion *)v5 setMhClientEvent:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"ttsClientEvent"];
    objc_opt_class();
    v130 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[TTSSchemaTTSClientEvent alloc] initWithDictionary:v34];
      [(GRPSchemaSiriEventTypeUnion *)v5 setTtsClientEvent:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"clpClientEvent"];
    objc_opt_class();
    v129 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[CLPInstSchemaCLPClientEvent alloc] initWithDictionary:v36];
      [(GRPSchemaSiriEventTypeUnion *)v5 setClpClientEvent:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"rrClientEvent"];
    objc_opt_class();
    v128 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[RRSchemaRRClientEvent alloc] initWithDictionary:v38];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRrClientEvent:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"cnvClientEvent"];
    objc_opt_class();
    v127 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[CNVSchemaCNVClientEvent alloc] initWithDictionary:v40];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCnvClientEvent:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"ancClientEvent"];
    objc_opt_class();
    v126 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ANCSchemaANCClientEvent alloc] initWithDictionary:v42];
      [(GRPSchemaSiriEventTypeUnion *)v5 setAncClientEvent:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"halClientEvent"];
    objc_opt_class();
    v125 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[HALSchemaHALClientEvent alloc] initWithDictionary:v44];
      [(GRPSchemaSiriEventTypeUnion *)v5 setHalClientEvent:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"netClientEvent"];
    objc_opt_class();
    v124 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[NETSchemaNETClientEvent alloc] initWithDictionary:v46];
      [(GRPSchemaSiriEventTypeUnion *)v5 setNetClientEvent:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"sadClientEvent"];
    objc_opt_class();
    v123 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[SADSchemaSADClientEvent alloc] initWithDictionary:v48];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSadClientEvent:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"dodmlClientEvent"];
    objc_opt_class();
    v122 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[DODMLSchemaDODMLClientEvent alloc] initWithDictionary:v50];
      [(GRPSchemaSiriEventTypeUnion *)v5 setDodmlClientEvent:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"plusClientEvent"];
    objc_opt_class();
    v121 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[PLUSSchemaPLUSClientEvent alloc] initWithDictionary:v52];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPlusClientEvent:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"expSearchClientEvent"];
    objc_opt_class();
    v120 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[EXPSearchSchemaEXPSearchClientEvent alloc] initWithDictionary:v54];
      [(GRPSchemaSiriEventTypeUnion *)v5 setExpSearchClientEvent:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"expSiriClientEvent"];
    objc_opt_class();
    v119 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[EXPSiriSchemaEXPSiriClientEvent alloc] initWithDictionary:v56];
      [(GRPSchemaSiriEventTypeUnion *)v5 setExpSiriClientEvent:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"srstClientEvent"];
    objc_opt_class();
    v118 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[SRSTSchemaSRSTClientEvent alloc] initWithDictionary:v58];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSrstClientEvent:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"pommmesClientEvent"];
    objc_opt_class();
    v117 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[POMMESSchemaPOMMESClientEvent alloc] initWithDictionary:v60];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPommmesClientEvent:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"cdaClientEvent"];
    objc_opt_class();
    v116 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[CDASchemaCDAClientEvent alloc] initWithDictionary:v62];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCdaClientEvent:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"mwtClientEvent"];
    objc_opt_class();
    v115 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[MWTSchemaMWTClientEvent alloc] initWithDictionary:v64];
      [(GRPSchemaSiriEventTypeUnion *)v5 setMwtClientEvent:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"homeClientEvent"];
    objc_opt_class();
    v114 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[HOMESchemaHOMEClientEvent alloc] initWithDictionary:v66];
      [(GRPSchemaSiriEventTypeUnion *)v5 setHomeClientEvent:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"gradingOptInStateChange"];
    objc_opt_class();
    v113 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[SISchemaGradingOptInStateChange alloc] initWithDictionary:v68];
      [(GRPSchemaSiriEventTypeUnion *)v5 setGradingOptInStateChange:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"optinStatePropagationEvent"];
    objc_opt_class();
    v112 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[OPTINSchemaOPTINStatePropagationEvent alloc] initWithDictionary:v70];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOptinStatePropagationEvent:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"rssClientEvent"];
    objc_opt_class();
    v111 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[RSSSchemaRSSClientEvent alloc] initWithDictionary:v72];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRssClientEvent:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"sugClientEvent"];
    objc_opt_class();
    v110 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[SUGSchemaSUGClientEvent alloc] initWithDictionary:v74];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSugClientEvent:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"flowLinkClientEvent"];
    objc_opt_class();
    v109 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[FLOWLINKSchemaFLOWLINKClientEvent alloc] initWithDictionary:v76];
      [(GRPSchemaSiriEventTypeUnion *)v5 setFlowLinkClientEvent:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"rfClientEvent"];
    objc_opt_class();
    v108 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[RFSchemaRFClientEvent alloc] initWithDictionary:v78];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRfClientEvent:v79];
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"sicClientEvent"];
    objc_opt_class();
    v107 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[SICSchemaSICClientEvent alloc] initWithDictionary:v80];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSicClientEvent:v81];
    }

    v101 = v16;
    v82 = [dictionaryCopy objectForKeyedSubscript:@"inferenceClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[INFERENCESchemaINFERENCEClientEvent alloc] initWithDictionary:v82];
      [(GRPSchemaSiriEventTypeUnion *)v5 setInferenceClientEvent:v83];
    }

    v106 = v6;
    v84 = [dictionaryCopy objectForKeyedSubscript:{@"caarClientEvent", v82}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[CAARSchemaCAARClientEvent alloc] initWithDictionary:v84];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCaarClientEvent:v85];
    }

    v105 = v8;
    v86 = [dictionaryCopy objectForKeyedSubscript:@"rfgClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[RFGSchemaRFGClientEvent alloc] initWithDictionary:v86];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRfgClientEvent:v87];
    }

    v104 = v10;
    v88 = [dictionaryCopy objectForKeyedSubscript:@"scClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[SCSchemaSCClientEvent alloc] initWithDictionary:v88];
      [(GRPSchemaSiriEventTypeUnion *)v5 setScClientEvent:v89];
    }

    v103 = v12;
    v90 = [dictionaryCopy objectForKeyedSubscript:@"siriSetupClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[SIRISETUPSchemaSIRISETUPClientEvent alloc] initWithDictionary:v90];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSiriSetupClientEvent:v91];
    }

    v102 = v14;
    v92 = [dictionaryCopy objectForKeyedSubscript:@"optInClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = [[OPTINSchemaOPTINClientEvent alloc] initWithDictionary:v92];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOptInClientEvent:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"lrClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = [[LRSchemaLRClientEvent alloc] initWithDictionary:v94];
      [(GRPSchemaSiriEventTypeUnion *)v5 setLrClientEvent:v95];
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"homeKitClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v97 = [[HomeKitSchemaHKClientEvent alloc] initWithDictionary:v96];
      [(GRPSchemaSiriEventTypeUnion *)v5 setHomeKitClientEvent:v97];
    }

    v98 = v5;
  }

  return v5;
}

- (GRPSchemaSiriEventTypeUnion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaSiriEventTypeUnion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaSiriEventTypeUnion *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_ancClientEvent)
  {
    ancClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    dictionaryRepresentation = [ancClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ancClientEvent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ancClientEvent"];
    }
  }

  if (self->_asrClientEvent)
  {
    asrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    dictionaryRepresentation2 = [asrClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"asrClientEvent"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"asrClientEvent"];
    }
  }

  if (self->_caarClientEvent)
  {
    caarClientEvent = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    dictionaryRepresentation3 = [caarClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"caarClientEvent"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"caarClientEvent"];
    }
  }

  if (self->_camClientEvent)
  {
    camClientEvent = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    dictionaryRepresentation4 = [camClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"camClientEvent"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"camClientEvent"];
    }
  }

  if (self->_cdaClientEvent)
  {
    cdaClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    dictionaryRepresentation5 = [cdaClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"cdaClientEvent"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"cdaClientEvent"];
    }
  }

  if (self->_clpClientEvent)
  {
    clpClientEvent = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    dictionaryRepresentation6 = [clpClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"clpClientEvent"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"clpClientEvent"];
    }
  }

  if (self->_cnvClientEvent)
  {
    cnvClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    dictionaryRepresentation7 = [cnvClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"cnvClientEvent"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"cnvClientEvent"];
    }
  }

  if (self->_dimClientEvent)
  {
    dimClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    dictionaryRepresentation8 = [dimClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"dimClientEvent"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"dimClientEvent"];
    }
  }

  if (self->_dodmlClientEvent)
  {
    dodmlClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    dictionaryRepresentation9 = [dodmlClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"dodmlClientEvent"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"dodmlClientEvent"];
    }
  }

  if (self->_expSearchClientEvent)
  {
    expSearchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    dictionaryRepresentation10 = [expSearchClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"expSearchClientEvent"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"expSearchClientEvent"];
    }
  }

  if (self->_expSiriClientEvent)
  {
    expSiriClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    dictionaryRepresentation11 = [expSiriClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"expSiriClientEvent"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"expSiriClientEvent"];
    }
  }

  if (self->_flowClientEvent)
  {
    flowClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    dictionaryRepresentation12 = [flowClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"flowClientEvent"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"flowClientEvent"];
    }
  }

  if (self->_flowLinkClientEvent)
  {
    flowLinkClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    dictionaryRepresentation13 = [flowLinkClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"flowLinkClientEvent"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"flowLinkClientEvent"];
    }
  }

  if (self->_gradingOptInStateChange)
  {
    gradingOptInStateChange = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    dictionaryRepresentation14 = [gradingOptInStateChange dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"gradingOptInStateChange"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"gradingOptInStateChange"];
    }
  }

  if (self->_halClientEvent)
  {
    halClientEvent = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    dictionaryRepresentation15 = [halClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"halClientEvent"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"halClientEvent"];
    }
  }

  if (self->_homeClientEvent)
  {
    homeClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    dictionaryRepresentation16 = [homeClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"homeClientEvent"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"homeClientEvent"];
    }
  }

  if (self->_homeKitClientEvent)
  {
    homeKitClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    dictionaryRepresentation17 = [homeKitClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"homeKitClientEvent"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"homeKitClientEvent"];
    }
  }

  if (self->_ihClientEvent)
  {
    ihClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    dictionaryRepresentation18 = [ihClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"ihClientEvent"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"ihClientEvent"];
    }
  }

  if (self->_inferenceClientEvent)
  {
    inferenceClientEvent = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    dictionaryRepresentation19 = [inferenceClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"inferenceClientEvent"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"inferenceClientEvent"];
    }
  }

  if (self->_lrClientEvent)
  {
    lrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    dictionaryRepresentation20 = [lrClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"lrClientEvent"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"lrClientEvent"];
    }
  }

  if (self->_mhClientEvent)
  {
    mhClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    dictionaryRepresentation21 = [mhClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"mhClientEvent"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"mhClientEvent"];
    }
  }

  if (self->_mwtClientEvent)
  {
    mwtClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    dictionaryRepresentation22 = [mwtClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"mwtClientEvent"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"mwtClientEvent"];
    }
  }

  if (self->_netClientEvent)
  {
    netClientEvent = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    dictionaryRepresentation23 = [netClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"netClientEvent"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"netClientEvent"];
    }
  }

  if (self->_nlxClientEvent)
  {
    nlxClientEvent = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    dictionaryRepresentation24 = [nlxClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"nlxClientEvent"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"nlxClientEvent"];
    }
  }

  if (self->_optInClientEvent)
  {
    optInClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    dictionaryRepresentation25 = [optInClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"optInClientEvent"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"optInClientEvent"];
    }
  }

  if (self->_optinStatePropagationEvent)
  {
    optinStatePropagationEvent = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    dictionaryRepresentation26 = [optinStatePropagationEvent dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"optinStatePropagationEvent"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"optinStatePropagationEvent"];
    }
  }

  if (self->_orchClientEvent)
  {
    orchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    dictionaryRepresentation27 = [orchClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"orchClientEvent"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"orchClientEvent"];
    }
  }

  if (self->_petUploadEvent)
  {
    petUploadEvent = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    dictionaryRepresentation28 = [petUploadEvent dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"petUploadEvent"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"petUploadEvent"];
    }
  }

  if (self->_plusClientEvent)
  {
    plusClientEvent = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    dictionaryRepresentation29 = [plusClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"plusClientEvent"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"plusClientEvent"];
    }
  }

  if (self->_pommmesClientEvent)
  {
    pommmesClientEvent = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    dictionaryRepresentation30 = [pommmesClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"pommmesClientEvent"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"pommmesClientEvent"];
    }
  }

  if (self->_provisionalEvent)
  {
    provisionalEvent = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    dictionaryRepresentation31 = [provisionalEvent dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"provisionalEvent"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"provisionalEvent"];
    }
  }

  if (self->_requestLinkEvent)
  {
    requestLinkEvent = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    dictionaryRepresentation32 = [requestLinkEvent dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"requestLinkEvent"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"requestLinkEvent"];
    }
  }

  if (self->_rfClientEvent)
  {
    rfClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    dictionaryRepresentation33 = [rfClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"rfClientEvent"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"rfClientEvent"];
    }
  }

  if (self->_rfgClientEvent)
  {
    rfgClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    dictionaryRepresentation34 = [rfgClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"rfgClientEvent"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"rfgClientEvent"];
    }
  }

  if (self->_rrClientEvent)
  {
    rrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    dictionaryRepresentation35 = [rrClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"rrClientEvent"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"rrClientEvent"];
    }
  }

  if (self->_rssClientEvent)
  {
    rssClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    dictionaryRepresentation36 = [rssClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"rssClientEvent"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"rssClientEvent"];
    }
  }

  if (self->_sadClientEvent)
  {
    sadClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    dictionaryRepresentation37 = [sadClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"sadClientEvent"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"sadClientEvent"];
    }
  }

  if (self->_scClientEvent)
  {
    scClientEvent = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    dictionaryRepresentation38 = [scClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"scClientEvent"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"scClientEvent"];
    }
  }

  if (self->_sicClientEvent)
  {
    sicClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    dictionaryRepresentation39 = [sicClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"sicClientEvent"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"sicClientEvent"];
    }
  }

  if (self->_siriSetupClientEvent)
  {
    siriSetupClientEvent = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    dictionaryRepresentation40 = [siriSetupClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"siriSetupClientEvent"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"siriSetupClientEvent"];
    }
  }

  if (self->_srstClientEvent)
  {
    srstClientEvent = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    dictionaryRepresentation41 = [srstClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"srstClientEvent"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"srstClientEvent"];
    }
  }

  if (self->_sugClientEvent)
  {
    sugClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    dictionaryRepresentation42 = [sugClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"sugClientEvent"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"sugClientEvent"];
    }
  }

  if (self->_testExecutionEvent)
  {
    testExecutionEvent = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    dictionaryRepresentation43 = [testExecutionEvent dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"testExecutionEvent"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"testExecutionEvent"];
    }
  }

  if (self->_ttsClientEvent)
  {
    ttsClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    dictionaryRepresentation44 = [ttsClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"ttsClientEvent"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"ttsClientEvent"];
    }
  }

  if (self->_ueiClientEvent)
  {
    ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    dictionaryRepresentation45 = [ueiClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"ueiClientEvent"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"ueiClientEvent"];
    }
  }

  if (self->_uspClientEvent)
  {
    uspClientEvent = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    dictionaryRepresentation46 = [uspClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation46)
    {
      [dictionary setObject:dictionaryRepresentation46 forKeyedSubscript:@"uspClientEvent"];
    }

    else
    {
      null46 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null46 forKeyedSubscript:@"uspClientEvent"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v142 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaClientEvent *)self->_ueiClientEvent hash];
  v4 = [(PETSchemaPETUpload *)self->_petUploadEvent hash]^ v3;
  v5 = [(SISchemaProvisionalEvent *)self->_provisionalEvent hash];
  v6 = v4 ^ v5 ^ [(SUTSchemaTestExecutionEvent *)self->_testExecutionEvent hash];
  v7 = [(SISchemaRequestLink *)self->_requestLinkEvent hash];
  v8 = v7 ^ [(FLOWSchemaFLOWClientEvent *)self->_flowClientEvent hash];
  v9 = v6 ^ v8 ^ [(CAMSchemaCAMClientEvent *)self->_camClientEvent hash];
  v10 = [(USPSchemaUSPClientEvent *)self->_uspClientEvent hash];
  v11 = v10 ^ [(DIMSchemaDIMClientEvent *)self->_dimClientEvent hash];
  v12 = v11 ^ [(NLXSchemaNLXClientEvent *)self->_nlxClientEvent hash];
  v13 = v9 ^ v12 ^ [(ORCHSchemaORCHClientEvent *)self->_orchClientEvent hash];
  v14 = [(ASRSchemaASRClientEvent *)self->_asrClientEvent hash];
  v15 = v14 ^ [(IHSchemaIHClientEvent *)self->_ihClientEvent hash];
  v16 = v15 ^ [(MHSchemaMHClientEvent *)self->_mhClientEvent hash];
  v17 = v16 ^ [(TTSSchemaTTSClientEvent *)self->_ttsClientEvent hash];
  v18 = v13 ^ v17 ^ [(CLPInstSchemaCLPClientEvent *)self->_clpClientEvent hash];
  v19 = [(RRSchemaRRClientEvent *)self->_rrClientEvent hash];
  v20 = v19 ^ [(CNVSchemaCNVClientEvent *)self->_cnvClientEvent hash];
  v21 = v20 ^ [(ANCSchemaANCClientEvent *)self->_ancClientEvent hash];
  v22 = v21 ^ [(HALSchemaHALClientEvent *)self->_halClientEvent hash];
  v23 = v22 ^ [(NETSchemaNETClientEvent *)self->_netClientEvent hash];
  v24 = v18 ^ v23 ^ [(SADSchemaSADClientEvent *)self->_sadClientEvent hash];
  v25 = [(DODMLSchemaDODMLClientEvent *)self->_dodmlClientEvent hash];
  v26 = v25 ^ [(PLUSSchemaPLUSClientEvent *)self->_plusClientEvent hash];
  v27 = v26 ^ [(EXPSearchSchemaEXPSearchClientEvent *)self->_expSearchClientEvent hash];
  v28 = v27 ^ [(EXPSiriSchemaEXPSiriClientEvent *)self->_expSiriClientEvent hash];
  v29 = v28 ^ [(SRSTSchemaSRSTClientEvent *)self->_srstClientEvent hash];
  v30 = v29 ^ [(POMMESSchemaPOMMESClientEvent *)self->_pommmesClientEvent hash];
  v31 = v24 ^ v30 ^ [(CDASchemaCDAClientEvent *)self->_cdaClientEvent hash];
  v32 = [(MWTSchemaMWTClientEvent *)self->_mwtClientEvent hash];
  v33 = v32 ^ [(HOMESchemaHOMEClientEvent *)self->_homeClientEvent hash];
  v34 = v33 ^ [(SISchemaGradingOptInStateChange *)self->_gradingOptInStateChange hash];
  v35 = v34 ^ [(OPTINSchemaOPTINStatePropagationEvent *)self->_optinStatePropagationEvent hash];
  v36 = v35 ^ [(RSSSchemaRSSClientEvent *)self->_rssClientEvent hash];
  v37 = v36 ^ [(SUGSchemaSUGClientEvent *)self->_sugClientEvent hash];
  v38 = v37 ^ [(FLOWLINKSchemaFLOWLINKClientEvent *)self->_flowLinkClientEvent hash];
  v39 = v31 ^ v38 ^ [(RFSchemaRFClientEvent *)self->_rfClientEvent hash];
  v40 = [(SICSchemaSICClientEvent *)self->_sicClientEvent hash];
  v41 = v40 ^ [(INFERENCESchemaINFERENCEClientEvent *)self->_inferenceClientEvent hash];
  v42 = v41 ^ [(CAARSchemaCAARClientEvent *)self->_caarClientEvent hash];
  v43 = v42 ^ [(RFGSchemaRFGClientEvent *)self->_rfgClientEvent hash];
  v44 = v43 ^ [(SCSchemaSCClientEvent *)self->_scClientEvent hash];
  v45 = v44 ^ [(SIRISETUPSchemaSIRISETUPClientEvent *)self->_siriSetupClientEvent hash];
  v46 = v45 ^ [(OPTINSchemaOPTINClientEvent *)self->_optInClientEvent hash];
  v47 = v46 ^ [(LRSchemaLRClientEvent *)self->_lrClientEvent hash];
  return v39 ^ v47 ^ [(HomeKitSchemaHKClientEvent *)self->_homeKitClientEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_233;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_233;
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  ueiClientEvent2 = [equalCopy ueiClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  ueiClientEvent3 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  if (ueiClientEvent3)
  {
    v9 = ueiClientEvent3;
    ueiClientEvent4 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    ueiClientEvent5 = [equalCopy ueiClientEvent];
    v12 = [ueiClientEvent4 isEqual:ueiClientEvent5];

    if (!v12)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  ueiClientEvent2 = [equalCopy petUploadEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  petUploadEvent = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  if (petUploadEvent)
  {
    v14 = petUploadEvent;
    petUploadEvent2 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    petUploadEvent3 = [equalCopy petUploadEvent];
    v17 = [petUploadEvent2 isEqual:petUploadEvent3];

    if (!v17)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  ueiClientEvent2 = [equalCopy provisionalEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  provisionalEvent = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  if (provisionalEvent)
  {
    v19 = provisionalEvent;
    provisionalEvent2 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    provisionalEvent3 = [equalCopy provisionalEvent];
    v22 = [provisionalEvent2 isEqual:provisionalEvent3];

    if (!v22)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  ueiClientEvent2 = [equalCopy testExecutionEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  testExecutionEvent = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  if (testExecutionEvent)
  {
    v24 = testExecutionEvent;
    testExecutionEvent2 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    testExecutionEvent3 = [equalCopy testExecutionEvent];
    v27 = [testExecutionEvent2 isEqual:testExecutionEvent3];

    if (!v27)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  ueiClientEvent2 = [equalCopy requestLinkEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  requestLinkEvent = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  if (requestLinkEvent)
  {
    v29 = requestLinkEvent;
    requestLinkEvent2 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    requestLinkEvent3 = [equalCopy requestLinkEvent];
    v32 = [requestLinkEvent2 isEqual:requestLinkEvent3];

    if (!v32)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  ueiClientEvent2 = [equalCopy flowClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  flowClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  if (flowClientEvent)
  {
    v34 = flowClientEvent;
    flowClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    flowClientEvent3 = [equalCopy flowClientEvent];
    v37 = [flowClientEvent2 isEqual:flowClientEvent3];

    if (!v37)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  ueiClientEvent2 = [equalCopy camClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  camClientEvent = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  if (camClientEvent)
  {
    v39 = camClientEvent;
    camClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    camClientEvent3 = [equalCopy camClientEvent];
    v42 = [camClientEvent2 isEqual:camClientEvent3];

    if (!v42)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  ueiClientEvent2 = [equalCopy uspClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  uspClientEvent = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  if (uspClientEvent)
  {
    v44 = uspClientEvent;
    uspClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    uspClientEvent3 = [equalCopy uspClientEvent];
    v47 = [uspClientEvent2 isEqual:uspClientEvent3];

    if (!v47)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  ueiClientEvent2 = [equalCopy dimClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  dimClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  if (dimClientEvent)
  {
    v49 = dimClientEvent;
    dimClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    dimClientEvent3 = [equalCopy dimClientEvent];
    v52 = [dimClientEvent2 isEqual:dimClientEvent3];

    if (!v52)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  ueiClientEvent2 = [equalCopy nlxClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  nlxClientEvent = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  if (nlxClientEvent)
  {
    v54 = nlxClientEvent;
    nlxClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    nlxClientEvent3 = [equalCopy nlxClientEvent];
    v57 = [nlxClientEvent2 isEqual:nlxClientEvent3];

    if (!v57)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  ueiClientEvent2 = [equalCopy orchClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  orchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  if (orchClientEvent)
  {
    v59 = orchClientEvent;
    orchClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    orchClientEvent3 = [equalCopy orchClientEvent];
    v62 = [orchClientEvent2 isEqual:orchClientEvent3];

    if (!v62)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  ueiClientEvent2 = [equalCopy asrClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  asrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  if (asrClientEvent)
  {
    v64 = asrClientEvent;
    asrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    asrClientEvent3 = [equalCopy asrClientEvent];
    v67 = [asrClientEvent2 isEqual:asrClientEvent3];

    if (!v67)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  ueiClientEvent2 = [equalCopy ihClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  ihClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  if (ihClientEvent)
  {
    v69 = ihClientEvent;
    ihClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    ihClientEvent3 = [equalCopy ihClientEvent];
    v72 = [ihClientEvent2 isEqual:ihClientEvent3];

    if (!v72)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  ueiClientEvent2 = [equalCopy mhClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  mhClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  if (mhClientEvent)
  {
    v74 = mhClientEvent;
    mhClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    mhClientEvent3 = [equalCopy mhClientEvent];
    v77 = [mhClientEvent2 isEqual:mhClientEvent3];

    if (!v77)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  ueiClientEvent2 = [equalCopy ttsClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  ttsClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  if (ttsClientEvent)
  {
    v79 = ttsClientEvent;
    ttsClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    ttsClientEvent3 = [equalCopy ttsClientEvent];
    v82 = [ttsClientEvent2 isEqual:ttsClientEvent3];

    if (!v82)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  ueiClientEvent2 = [equalCopy clpClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  clpClientEvent = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  if (clpClientEvent)
  {
    v84 = clpClientEvent;
    clpClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    clpClientEvent3 = [equalCopy clpClientEvent];
    v87 = [clpClientEvent2 isEqual:clpClientEvent3];

    if (!v87)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  ueiClientEvent2 = [equalCopy rrClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  rrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  if (rrClientEvent)
  {
    v89 = rrClientEvent;
    rrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    rrClientEvent3 = [equalCopy rrClientEvent];
    v92 = [rrClientEvent2 isEqual:rrClientEvent3];

    if (!v92)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  ueiClientEvent2 = [equalCopy cnvClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  cnvClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  if (cnvClientEvent)
  {
    v94 = cnvClientEvent;
    cnvClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    cnvClientEvent3 = [equalCopy cnvClientEvent];
    v97 = [cnvClientEvent2 isEqual:cnvClientEvent3];

    if (!v97)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  ueiClientEvent2 = [equalCopy ancClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  ancClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  if (ancClientEvent)
  {
    v99 = ancClientEvent;
    ancClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    ancClientEvent3 = [equalCopy ancClientEvent];
    v102 = [ancClientEvent2 isEqual:ancClientEvent3];

    if (!v102)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  ueiClientEvent2 = [equalCopy halClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  halClientEvent = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  if (halClientEvent)
  {
    v104 = halClientEvent;
    halClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    halClientEvent3 = [equalCopy halClientEvent];
    v107 = [halClientEvent2 isEqual:halClientEvent3];

    if (!v107)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  ueiClientEvent2 = [equalCopy netClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  netClientEvent = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  if (netClientEvent)
  {
    v109 = netClientEvent;
    netClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    netClientEvent3 = [equalCopy netClientEvent];
    v112 = [netClientEvent2 isEqual:netClientEvent3];

    if (!v112)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  ueiClientEvent2 = [equalCopy sadClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  sadClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  if (sadClientEvent)
  {
    v114 = sadClientEvent;
    sadClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    sadClientEvent3 = [equalCopy sadClientEvent];
    v117 = [sadClientEvent2 isEqual:sadClientEvent3];

    if (!v117)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  ueiClientEvent2 = [equalCopy dodmlClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  dodmlClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  if (dodmlClientEvent)
  {
    v119 = dodmlClientEvent;
    dodmlClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    dodmlClientEvent3 = [equalCopy dodmlClientEvent];
    v122 = [dodmlClientEvent2 isEqual:dodmlClientEvent3];

    if (!v122)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  ueiClientEvent2 = [equalCopy plusClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  plusClientEvent = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  if (plusClientEvent)
  {
    v124 = plusClientEvent;
    plusClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    plusClientEvent3 = [equalCopy plusClientEvent];
    v127 = [plusClientEvent2 isEqual:plusClientEvent3];

    if (!v127)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  ueiClientEvent2 = [equalCopy expSearchClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  expSearchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  if (expSearchClientEvent)
  {
    v129 = expSearchClientEvent;
    expSearchClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    expSearchClientEvent3 = [equalCopy expSearchClientEvent];
    v132 = [expSearchClientEvent2 isEqual:expSearchClientEvent3];

    if (!v132)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  ueiClientEvent2 = [equalCopy expSiriClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  expSiriClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  if (expSiriClientEvent)
  {
    v134 = expSiriClientEvent;
    expSiriClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    expSiriClientEvent3 = [equalCopy expSiriClientEvent];
    v137 = [expSiriClientEvent2 isEqual:expSiriClientEvent3];

    if (!v137)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  ueiClientEvent2 = [equalCopy srstClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  srstClientEvent = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  if (srstClientEvent)
  {
    v139 = srstClientEvent;
    srstClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    srstClientEvent3 = [equalCopy srstClientEvent];
    v142 = [srstClientEvent2 isEqual:srstClientEvent3];

    if (!v142)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  ueiClientEvent2 = [equalCopy pommmesClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  pommmesClientEvent = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  if (pommmesClientEvent)
  {
    v144 = pommmesClientEvent;
    pommmesClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    pommmesClientEvent3 = [equalCopy pommmesClientEvent];
    v147 = [pommmesClientEvent2 isEqual:pommmesClientEvent3];

    if (!v147)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  ueiClientEvent2 = [equalCopy cdaClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  cdaClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  if (cdaClientEvent)
  {
    v149 = cdaClientEvent;
    cdaClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    cdaClientEvent3 = [equalCopy cdaClientEvent];
    v152 = [cdaClientEvent2 isEqual:cdaClientEvent3];

    if (!v152)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  ueiClientEvent2 = [equalCopy mwtClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  mwtClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  if (mwtClientEvent)
  {
    v154 = mwtClientEvent;
    mwtClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    mwtClientEvent3 = [equalCopy mwtClientEvent];
    v157 = [mwtClientEvent2 isEqual:mwtClientEvent3];

    if (!v157)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  ueiClientEvent2 = [equalCopy homeClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  homeClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  if (homeClientEvent)
  {
    v159 = homeClientEvent;
    homeClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    homeClientEvent3 = [equalCopy homeClientEvent];
    v162 = [homeClientEvent2 isEqual:homeClientEvent3];

    if (!v162)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  ueiClientEvent2 = [equalCopy gradingOptInStateChange];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  gradingOptInStateChange = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  if (gradingOptInStateChange)
  {
    v164 = gradingOptInStateChange;
    gradingOptInStateChange2 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    gradingOptInStateChange3 = [equalCopy gradingOptInStateChange];
    v167 = [gradingOptInStateChange2 isEqual:gradingOptInStateChange3];

    if (!v167)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  ueiClientEvent2 = [equalCopy optinStatePropagationEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  optinStatePropagationEvent = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  if (optinStatePropagationEvent)
  {
    v169 = optinStatePropagationEvent;
    optinStatePropagationEvent2 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    optinStatePropagationEvent3 = [equalCopy optinStatePropagationEvent];
    v172 = [optinStatePropagationEvent2 isEqual:optinStatePropagationEvent3];

    if (!v172)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  ueiClientEvent2 = [equalCopy rssClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  rssClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  if (rssClientEvent)
  {
    v174 = rssClientEvent;
    rssClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    rssClientEvent3 = [equalCopy rssClientEvent];
    v177 = [rssClientEvent2 isEqual:rssClientEvent3];

    if (!v177)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  ueiClientEvent2 = [equalCopy sugClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  sugClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  if (sugClientEvent)
  {
    v179 = sugClientEvent;
    sugClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    sugClientEvent3 = [equalCopy sugClientEvent];
    v182 = [sugClientEvent2 isEqual:sugClientEvent3];

    if (!v182)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  ueiClientEvent2 = [equalCopy flowLinkClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  flowLinkClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  if (flowLinkClientEvent)
  {
    v184 = flowLinkClientEvent;
    flowLinkClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    flowLinkClientEvent3 = [equalCopy flowLinkClientEvent];
    v187 = [flowLinkClientEvent2 isEqual:flowLinkClientEvent3];

    if (!v187)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  ueiClientEvent2 = [equalCopy rfClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  rfClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  if (rfClientEvent)
  {
    v189 = rfClientEvent;
    rfClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    rfClientEvent3 = [equalCopy rfClientEvent];
    v192 = [rfClientEvent2 isEqual:rfClientEvent3];

    if (!v192)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  ueiClientEvent2 = [equalCopy sicClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  sicClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  if (sicClientEvent)
  {
    v194 = sicClientEvent;
    sicClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    sicClientEvent3 = [equalCopy sicClientEvent];
    v197 = [sicClientEvent2 isEqual:sicClientEvent3];

    if (!v197)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  ueiClientEvent2 = [equalCopy inferenceClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  inferenceClientEvent = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  if (inferenceClientEvent)
  {
    v199 = inferenceClientEvent;
    inferenceClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    inferenceClientEvent3 = [equalCopy inferenceClientEvent];
    v202 = [inferenceClientEvent2 isEqual:inferenceClientEvent3];

    if (!v202)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  ueiClientEvent2 = [equalCopy caarClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  caarClientEvent = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  if (caarClientEvent)
  {
    v204 = caarClientEvent;
    caarClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    caarClientEvent3 = [equalCopy caarClientEvent];
    v207 = [caarClientEvent2 isEqual:caarClientEvent3];

    if (!v207)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  ueiClientEvent2 = [equalCopy rfgClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  rfgClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  if (rfgClientEvent)
  {
    v209 = rfgClientEvent;
    rfgClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    rfgClientEvent3 = [equalCopy rfgClientEvent];
    v212 = [rfgClientEvent2 isEqual:rfgClientEvent3];

    if (!v212)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  ueiClientEvent2 = [equalCopy scClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  scClientEvent = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  if (scClientEvent)
  {
    v214 = scClientEvent;
    scClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    scClientEvent3 = [equalCopy scClientEvent];
    v217 = [scClientEvent2 isEqual:scClientEvent3];

    if (!v217)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  ueiClientEvent2 = [equalCopy siriSetupClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  siriSetupClientEvent = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  if (siriSetupClientEvent)
  {
    v219 = siriSetupClientEvent;
    siriSetupClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    siriSetupClientEvent3 = [equalCopy siriSetupClientEvent];
    v222 = [siriSetupClientEvent2 isEqual:siriSetupClientEvent3];

    if (!v222)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  ueiClientEvent2 = [equalCopy optInClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  optInClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  if (optInClientEvent)
  {
    v224 = optInClientEvent;
    optInClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    optInClientEvent3 = [equalCopy optInClientEvent];
    v227 = [optInClientEvent2 isEqual:optInClientEvent3];

    if (!v227)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  ueiClientEvent2 = [equalCopy lrClientEvent];
  if ((ueiClientEvent != 0) == (ueiClientEvent2 == 0))
  {
    goto LABEL_232;
  }

  lrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  if (lrClientEvent)
  {
    v229 = lrClientEvent;
    lrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    lrClientEvent3 = [equalCopy lrClientEvent];
    v232 = [lrClientEvent2 isEqual:lrClientEvent3];

    if (!v232)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
  ueiClientEvent2 = [equalCopy homeKitClientEvent];
  if ((ueiClientEvent != 0) != (ueiClientEvent2 == 0))
  {
    homeKitClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    if (!homeKitClientEvent)
    {

LABEL_236:
      v238 = 1;
      goto LABEL_234;
    }

    v234 = homeKitClientEvent;
    homeKitClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    homeKitClientEvent3 = [equalCopy homeKitClientEvent];
    v237 = [homeKitClientEvent2 isEqual:homeKitClientEvent3];

    if (v237)
    {
      goto LABEL_236;
    }
  }

  else
  {
LABEL_232:
  }

LABEL_233:
  v238 = 0;
LABEL_234:

  return v238;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];

  if (ueiClientEvent)
  {
    ueiClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    PBDataWriterWriteSubmessage();
  }

  petUploadEvent = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];

  if (petUploadEvent)
  {
    petUploadEvent2 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    PBDataWriterWriteSubmessage();
  }

  provisionalEvent = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];

  if (provisionalEvent)
  {
    provisionalEvent2 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    PBDataWriterWriteSubmessage();
  }

  testExecutionEvent = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];

  if (testExecutionEvent)
  {
    testExecutionEvent2 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    PBDataWriterWriteSubmessage();
  }

  requestLinkEvent = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];

  if (requestLinkEvent)
  {
    requestLinkEvent2 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    PBDataWriterWriteSubmessage();
  }

  flowClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];

  if (flowClientEvent)
  {
    flowClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    PBDataWriterWriteSubmessage();
  }

  camClientEvent = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];

  if (camClientEvent)
  {
    camClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    PBDataWriterWriteSubmessage();
  }

  uspClientEvent = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];

  if (uspClientEvent)
  {
    uspClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    PBDataWriterWriteSubmessage();
  }

  dimClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];

  if (dimClientEvent)
  {
    dimClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    PBDataWriterWriteSubmessage();
  }

  nlxClientEvent = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];

  if (nlxClientEvent)
  {
    nlxClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    PBDataWriterWriteSubmessage();
  }

  orchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];

  if (orchClientEvent)
  {
    orchClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    PBDataWriterWriteSubmessage();
  }

  asrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];

  if (asrClientEvent)
  {
    asrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  ihClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];

  if (ihClientEvent)
  {
    ihClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    PBDataWriterWriteSubmessage();
  }

  mhClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];

  if (mhClientEvent)
  {
    mhClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    PBDataWriterWriteSubmessage();
  }

  ttsClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];

  if (ttsClientEvent)
  {
    ttsClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    PBDataWriterWriteSubmessage();
  }

  clpClientEvent = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];

  if (clpClientEvent)
  {
    clpClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    PBDataWriterWriteSubmessage();
  }

  rrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];

  if (rrClientEvent)
  {
    rrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  cnvClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];

  if (cnvClientEvent)
  {
    cnvClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    PBDataWriterWriteSubmessage();
  }

  ancClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];

  if (ancClientEvent)
  {
    ancClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    PBDataWriterWriteSubmessage();
  }

  halClientEvent = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];

  if (halClientEvent)
  {
    halClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    PBDataWriterWriteSubmessage();
  }

  netClientEvent = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];

  if (netClientEvent)
  {
    netClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    PBDataWriterWriteSubmessage();
  }

  sadClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];

  if (sadClientEvent)
  {
    sadClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    PBDataWriterWriteSubmessage();
  }

  dodmlClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];

  if (dodmlClientEvent)
  {
    dodmlClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    PBDataWriterWriteSubmessage();
  }

  plusClientEvent = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];

  if (plusClientEvent)
  {
    plusClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    PBDataWriterWriteSubmessage();
  }

  expSearchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];

  if (expSearchClientEvent)
  {
    expSearchClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    PBDataWriterWriteSubmessage();
  }

  expSiriClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];

  if (expSiriClientEvent)
  {
    expSiriClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    PBDataWriterWriteSubmessage();
  }

  srstClientEvent = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];

  if (srstClientEvent)
  {
    srstClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    PBDataWriterWriteSubmessage();
  }

  pommmesClientEvent = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];

  if (pommmesClientEvent)
  {
    pommmesClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    PBDataWriterWriteSubmessage();
  }

  cdaClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];

  if (cdaClientEvent)
  {
    cdaClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    PBDataWriterWriteSubmessage();
  }

  mwtClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];

  if (mwtClientEvent)
  {
    mwtClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    PBDataWriterWriteSubmessage();
  }

  homeClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];

  if (homeClientEvent)
  {
    homeClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    PBDataWriterWriteSubmessage();
  }

  gradingOptInStateChange = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];

  if (gradingOptInStateChange)
  {
    gradingOptInStateChange2 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    PBDataWriterWriteSubmessage();
  }

  optinStatePropagationEvent = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];

  if (optinStatePropagationEvent)
  {
    optinStatePropagationEvent2 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    PBDataWriterWriteSubmessage();
  }

  rssClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];

  if (rssClientEvent)
  {
    rssClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    PBDataWriterWriteSubmessage();
  }

  sugClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];

  if (sugClientEvent)
  {
    sugClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    PBDataWriterWriteSubmessage();
  }

  flowLinkClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];

  if (flowLinkClientEvent)
  {
    flowLinkClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    PBDataWriterWriteSubmessage();
  }

  rfClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];

  if (rfClientEvent)
  {
    rfClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    PBDataWriterWriteSubmessage();
  }

  sicClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];

  if (sicClientEvent)
  {
    sicClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    PBDataWriterWriteSubmessage();
  }

  inferenceClientEvent = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];

  if (inferenceClientEvent)
  {
    inferenceClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    PBDataWriterWriteSubmessage();
  }

  caarClientEvent = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];

  if (caarClientEvent)
  {
    caarClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    PBDataWriterWriteSubmessage();
  }

  rfgClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];

  if (rfgClientEvent)
  {
    rfgClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    PBDataWriterWriteSubmessage();
  }

  scClientEvent = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];

  if (scClientEvent)
  {
    scClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    PBDataWriterWriteSubmessage();
  }

  siriSetupClientEvent = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];

  if (siriSetupClientEvent)
  {
    siriSetupClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    PBDataWriterWriteSubmessage();
  }

  optInClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];

  if (optInClientEvent)
  {
    optInClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    PBDataWriterWriteSubmessage();
  }

  lrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];

  if (lrClientEvent)
  {
    lrClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  homeKitClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];

  v95 = toCopy;
  if (homeKitClientEvent)
  {
    homeKitClientEvent2 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    PBDataWriterWriteSubmessage();

    v95 = toCopy;
  }
}

- (void)deleteHomeKitClientEvent
{
  if (self->_whichEvent_Type == 46)
  {
    self->_whichEvent_Type = 0;
    self->_homeKitClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HomeKitSchemaHKClientEvent)homeKitClientEvent
{
  if (self->_whichEvent_Type == 46)
  {
    v3 = self->_homeKitClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeKitClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  v50 = 46;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = eventCopy;
}

- (void)deleteLrClientEvent
{
  if (self->_whichEvent_Type == 45)
  {
    self->_whichEvent_Type = 0;
    self->_lrClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LRSchemaLRClientEvent)lrClientEvent
{
  if (self->_whichEvent_Type == 45)
  {
    v3 = self->_lrClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLrClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 45;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = eventCopy;
}

- (void)deleteOptInClientEvent
{
  if (self->_whichEvent_Type == 44)
  {
    self->_whichEvent_Type = 0;
    self->_optInClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (OPTINSchemaOPTINClientEvent)optInClientEvent
{
  if (self->_whichEvent_Type == 44)
  {
    v3 = self->_optInClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOptInClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 44;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = eventCopy;
}

- (void)deleteSiriSetupClientEvent
{
  if (self->_whichEvent_Type == 43)
  {
    self->_whichEvent_Type = 0;
    self->_siriSetupClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPClientEvent)siriSetupClientEvent
{
  if (self->_whichEvent_Type == 43)
  {
    v3 = self->_siriSetupClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriSetupClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 43;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = eventCopy;
}

- (void)deleteScClientEvent
{
  if (self->_whichEvent_Type == 42)
  {
    self->_whichEvent_Type = 0;
    self->_scClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SCSchemaSCClientEvent)scClientEvent
{
  if (self->_whichEvent_Type == 42)
  {
    v3 = self->_scClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setScClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 42;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = eventCopy;
}

- (void)deleteRfgClientEvent
{
  if (self->_whichEvent_Type == 41)
  {
    self->_whichEvent_Type = 0;
    self->_rfgClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RFGSchemaRFGClientEvent)rfgClientEvent
{
  if (self->_whichEvent_Type == 41)
  {
    v3 = self->_rfgClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRfgClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 41;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = eventCopy;
}

- (void)deleteCaarClientEvent
{
  if (self->_whichEvent_Type == 40)
  {
    self->_whichEvent_Type = 0;
    self->_caarClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARClientEvent)caarClientEvent
{
  if (self->_whichEvent_Type == 40)
  {
    v3 = self->_caarClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCaarClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 40;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = eventCopy;
}

- (void)deleteInferenceClientEvent
{
  if (self->_whichEvent_Type == 39)
  {
    self->_whichEvent_Type = 0;
    self->_inferenceClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEClientEvent)inferenceClientEvent
{
  if (self->_whichEvent_Type == 39)
  {
    v3 = self->_inferenceClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInferenceClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 39;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = eventCopy;
}

- (void)deleteSicClientEvent
{
  if (self->_whichEvent_Type == 38)
  {
    self->_whichEvent_Type = 0;
    self->_sicClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICClientEvent)sicClientEvent
{
  if (self->_whichEvent_Type == 38)
  {
    v3 = self->_sicClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSicClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 38;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = eventCopy;
}

- (void)deleteRfClientEvent
{
  if (self->_whichEvent_Type == 37)
  {
    self->_whichEvent_Type = 0;
    self->_rfClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RFSchemaRFClientEvent)rfClientEvent
{
  if (self->_whichEvent_Type == 37)
  {
    v3 = self->_rfClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRfClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 37;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = eventCopy;
}

- (void)deleteFlowLinkClientEvent
{
  if (self->_whichEvent_Type == 36)
  {
    self->_whichEvent_Type = 0;
    self->_flowLinkClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKClientEvent)flowLinkClientEvent
{
  if (self->_whichEvent_Type == 36)
  {
    v3 = self->_flowLinkClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFlowLinkClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 36;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = eventCopy;
}

- (void)deleteSugClientEvent
{
  if (self->_whichEvent_Type == 35)
  {
    self->_whichEvent_Type = 0;
    self->_sugClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGClientEvent)sugClientEvent
{
  if (self->_whichEvent_Type == 35)
  {
    v3 = self->_sugClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSugClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 35;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = eventCopy;
}

- (void)deleteRssClientEvent
{
  if (self->_whichEvent_Type == 34)
  {
    self->_whichEvent_Type = 0;
    self->_rssClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RSSSchemaRSSClientEvent)rssClientEvent
{
  if (self->_whichEvent_Type == 34)
  {
    v3 = self->_rssClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRssClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 34;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = eventCopy;
}

- (void)deleteOptinStatePropagationEvent
{
  if (self->_whichEvent_Type == 33)
  {
    self->_whichEvent_Type = 0;
    self->_optinStatePropagationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (OPTINSchemaOPTINStatePropagationEvent)optinStatePropagationEvent
{
  if (self->_whichEvent_Type == 33)
  {
    v3 = self->_optinStatePropagationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOptinStatePropagationEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 33;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = eventCopy;
}

- (void)deleteGradingOptInStateChange
{
  if (self->_whichEvent_Type == 32)
  {
    self->_whichEvent_Type = 0;
    self->_gradingOptInStateChange = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaGradingOptInStateChange)gradingOptInStateChange
{
  if (self->_whichEvent_Type == 32)
  {
    v3 = self->_gradingOptInStateChange;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGradingOptInStateChange:(id)change
{
  changeCopy = change;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = 32 * (changeCopy != 0);
  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = changeCopy;
}

- (void)deleteHomeClientEvent
{
  if (self->_whichEvent_Type == 31)
  {
    self->_whichEvent_Type = 0;
    self->_homeClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HOMESchemaHOMEClientEvent)homeClientEvent
{
  if (self->_whichEvent_Type == 31)
  {
    v3 = self->_homeClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 31;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = eventCopy;
}

- (void)deleteMwtClientEvent
{
  if (self->_whichEvent_Type == 30)
  {
    self->_whichEvent_Type = 0;
    self->_mwtClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MWTSchemaMWTClientEvent)mwtClientEvent
{
  if (self->_whichEvent_Type == 30)
  {
    v3 = self->_mwtClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMwtClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 30;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = eventCopy;
}

- (void)deleteCdaClientEvent
{
  if (self->_whichEvent_Type == 29)
  {
    self->_whichEvent_Type = 0;
    self->_cdaClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CDASchemaCDAClientEvent)cdaClientEvent
{
  if (self->_whichEvent_Type == 29)
  {
    v3 = self->_cdaClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdaClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 29;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = eventCopy;
}

- (void)deletePommmesClientEvent
{
  if (self->_whichEvent_Type == 28)
  {
    self->_whichEvent_Type = 0;
    self->_pommmesClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESClientEvent)pommmesClientEvent
{
  if (self->_whichEvent_Type == 28)
  {
    v3 = self->_pommmesClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommmesClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 28;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = eventCopy;
}

- (void)deleteSrstClientEvent
{
  if (self->_whichEvent_Type == 27)
  {
    self->_whichEvent_Type = 0;
    self->_srstClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SRSTSchemaSRSTClientEvent)srstClientEvent
{
  if (self->_whichEvent_Type == 27)
  {
    v3 = self->_srstClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSrstClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 27;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = eventCopy;
}

- (void)deleteExpSiriClientEvent
{
  if (self->_whichEvent_Type == 26)
  {
    self->_whichEvent_Type = 0;
    self->_expSiriClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPSiriClientEvent)expSiriClientEvent
{
  if (self->_whichEvent_Type == 26)
  {
    v3 = self->_expSiriClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExpSiriClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 26;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = eventCopy;
}

- (void)deleteExpSearchClientEvent
{
  if (self->_whichEvent_Type == 25)
  {
    self->_whichEvent_Type = 0;
    self->_expSearchClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSearchSchemaEXPSearchClientEvent)expSearchClientEvent
{
  if (self->_whichEvent_Type == 25)
  {
    v3 = self->_expSearchClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExpSearchClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 25;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = eventCopy;
}

- (void)deletePlusClientEvent
{
  if (self->_whichEvent_Type == 24)
  {
    self->_whichEvent_Type = 0;
    self->_plusClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSClientEvent)plusClientEvent
{
  if (self->_whichEvent_Type == 24)
  {
    v3 = self->_plusClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlusClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 24;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = eventCopy;
}

- (void)deleteDodmlClientEvent
{
  if (self->_whichEvent_Type == 23)
  {
    self->_whichEvent_Type = 0;
    self->_dodmlClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DODMLSchemaDODMLClientEvent)dodmlClientEvent
{
  if (self->_whichEvent_Type == 23)
  {
    v3 = self->_dodmlClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDodmlClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 23;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = eventCopy;
}

- (void)deleteSadClientEvent
{
  if (self->_whichEvent_Type == 22)
  {
    self->_whichEvent_Type = 0;
    self->_sadClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADClientEvent)sadClientEvent
{
  if (self->_whichEvent_Type == 22)
  {
    v3 = self->_sadClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSadClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 22;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = eventCopy;
}

- (void)deleteNetClientEvent
{
  if (self->_whichEvent_Type == 21)
  {
    self->_whichEvent_Type = 0;
    self->_netClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NETSchemaNETClientEvent)netClientEvent
{
  if (self->_whichEvent_Type == 21)
  {
    v3 = self->_netClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNetClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 21;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = eventCopy;
}

- (void)deleteHalClientEvent
{
  if (self->_whichEvent_Type == 20)
  {
    self->_whichEvent_Type = 0;
    self->_halClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HALSchemaHALClientEvent)halClientEvent
{
  if (self->_whichEvent_Type == 20)
  {
    v3 = self->_halClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHalClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 20;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = eventCopy;
}

- (void)deleteAncClientEvent
{
  if (self->_whichEvent_Type == 19)
  {
    self->_whichEvent_Type = 0;
    self->_ancClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCClientEvent)ancClientEvent
{
  if (self->_whichEvent_Type == 19)
  {
    v3 = self->_ancClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAncClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 19;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = eventCopy;
}

- (void)deleteCnvClientEvent
{
  if (self->_whichEvent_Type == 18)
  {
    self->_whichEvent_Type = 0;
    self->_cnvClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CNVSchemaCNVClientEvent)cnvClientEvent
{
  if (self->_whichEvent_Type == 18)
  {
    v3 = self->_cnvClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCnvClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 18;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = eventCopy;
}

- (void)deleteRrClientEvent
{
  if (self->_whichEvent_Type == 17)
  {
    self->_whichEvent_Type = 0;
    self->_rrClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RRSchemaRRClientEvent)rrClientEvent
{
  if (self->_whichEvent_Type == 17)
  {
    v3 = self->_rrClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRrClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 17;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = eventCopy;
}

- (void)deleteClpClientEvent
{
  if (self->_whichEvent_Type == 16)
  {
    self->_whichEvent_Type = 0;
    self->_clpClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPClientEvent)clpClientEvent
{
  if (self->_whichEvent_Type == 16)
  {
    v3 = self->_clpClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClpClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = 16 * (eventCopy != 0);
  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = eventCopy;
}

- (void)deleteTtsClientEvent
{
  if (self->_whichEvent_Type == 15)
  {
    self->_whichEvent_Type = 0;
    self->_ttsClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTSSchemaTTSClientEvent)ttsClientEvent
{
  if (self->_whichEvent_Type == 15)
  {
    v3 = self->_ttsClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTtsClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 15;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = eventCopy;
}

- (void)deleteMhClientEvent
{
  if (self->_whichEvent_Type == 14)
  {
    self->_whichEvent_Type = 0;
    self->_mhClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHClientEvent)mhClientEvent
{
  if (self->_whichEvent_Type == 14)
  {
    v3 = self->_mhClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMhClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 14;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = eventCopy;
}

- (void)deleteIhClientEvent
{
  if (self->_whichEvent_Type == 13)
  {
    self->_whichEvent_Type = 0;
    self->_ihClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IHSchemaIHClientEvent)ihClientEvent
{
  if (self->_whichEvent_Type == 13)
  {
    v3 = self->_ihClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIhClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 13;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = eventCopy;
}

- (void)deleteAsrClientEvent
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_asrClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRClientEvent)asrClientEvent
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_asrClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsrClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 12;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = eventCopy;
}

- (void)deleteOrchClientEvent
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_orchClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHClientEvent)orchClientEvent
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_orchClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOrchClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 11;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = eventCopy;
}

- (void)deleteNlxClientEvent
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_nlxClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaNLXClientEvent)nlxClientEvent
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_nlxClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlxClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 10;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = eventCopy;
}

- (void)deleteDimClientEvent
{
  if (self->_whichEvent_Type == 9)
  {
    self->_whichEvent_Type = 0;
    self->_dimClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMClientEvent)dimClientEvent
{
  if (self->_whichEvent_Type == 9)
  {
    v3 = self->_dimClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDimClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 9;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = eventCopy;
}

- (void)deleteUspClientEvent
{
  if (self->_whichEvent_Type == 8)
  {
    self->_whichEvent_Type = 0;
    self->_uspClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPClientEvent)uspClientEvent
{
  if (self->_whichEvent_Type == 8)
  {
    v3 = self->_uspClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUspClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = 8 * (eventCopy != 0);
  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = eventCopy;
}

- (void)deleteCamClientEvent
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_camClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMClientEvent)camClientEvent
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_camClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCamClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 7;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = eventCopy;
}

- (void)deleteFlowClientEvent
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_flowClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWClientEvent)flowClientEvent
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_flowClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFlowClientEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 6;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = eventCopy;
}

- (void)deleteRequestLinkEvent
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_requestLinkEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaRequestLink)requestLinkEvent
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_requestLinkEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestLinkEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 5;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = eventCopy;
}

- (void)deleteTestExecutionEvent
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_testExecutionEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestExecutionEvent)testExecutionEvent
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_testExecutionEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestExecutionEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = 4 * (eventCopy != 0);
  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = eventCopy;
}

- (void)deleteProvisionalEvent
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_provisionalEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaProvisionalEvent)provisionalEvent
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_provisionalEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProvisionalEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  v50 = 3;
  if (!eventCopy)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = eventCopy;
}

- (void)deletePetUploadEvent
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_petUploadEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PETSchemaPETUpload)petUploadEvent
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_petUploadEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPetUploadEvent:(id)event
{
  eventCopy = event;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = 2 * (eventCopy != 0);
  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = eventCopy;
}

- (void)deleteUeiClientEvent
{
  if (self->_whichEvent_Type == 1)
  {
    self->_whichEvent_Type = 0;
    self->_ueiClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaClientEvent)ueiClientEvent
{
  if (self->_whichEvent_Type == 1)
  {
    v3 = self->_ueiClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUeiClientEvent:(id)event
{
  eventCopy = event;
  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = 0;

  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = 0;

  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = 0;

  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = 0;

  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = 0;

  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = 0;

  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = 0;

  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = 0;

  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = 0;

  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = 0;

  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = 0;

  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = 0;

  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = 0;

  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = 0;

  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = 0;

  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = 0;

  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = 0;

  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = 0;

  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = 0;

  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = 0;

  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = 0;

  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = 0;

  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = 0;

  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = 0;

  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = 0;

  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = 0;

  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = 0;

  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = 0;

  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = 0;

  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = 0;

  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = 0;

  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = 0;

  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = 0;

  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = 0;

  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = 0;

  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = 0;

  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = 0;

  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = 0;

  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = 0;

  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = 0;

  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = 0;

  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = 0;

  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = 0;

  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = 0;

  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = 0;

  self->_whichEvent_Type = eventCopy != 0;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = eventCopy;
}

+ (id)getTagForEventTypeClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFA0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFB8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFD0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFE8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70000;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70018;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70030;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70048;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70060;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70078;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70090;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700A8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700C0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700D8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700F0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70108;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70120;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70138;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70150;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70168;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70180;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70198;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701B0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701C8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701E0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701F8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70210;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70228;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70240;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70258;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70270;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70288;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702A0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702B8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702D0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702E8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70300;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70318;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70330;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70348;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70360;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70378;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70390;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703A8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703C0;
  }

  if ([(objc_class *)class isEqual:objc_opt_class()])
  {
    return &unk_1F1F703D8;
  }

  return 0;
}

+ (Class)getEventTypeClassForTag:(int)tag
{
  if ((tag - 1) > 0x2D)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v146.receiver = self;
  v146.super_class = GRPSchemaSiriEventTypeUnion;
  v5 = [(SISchemaInstrumentationMessage *)&v146 applySensitiveConditionsPolicy:policyCopy];
  ueiClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  v7 = [ueiClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteUeiClientEvent];
  }

  petUploadEvent = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  v10 = [petUploadEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePetUploadEvent];
  }

  provisionalEvent = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  v13 = [provisionalEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteProvisionalEvent];
  }

  testExecutionEvent = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  v16 = [testExecutionEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteTestExecutionEvent];
  }

  requestLinkEvent = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  v19 = [requestLinkEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRequestLinkEvent];
  }

  flowClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  v22 = [flowClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteFlowClientEvent];
  }

  camClientEvent = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  v25 = [camClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCamClientEvent];
  }

  uspClientEvent = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  v28 = [uspClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteUspClientEvent];
  }

  dimClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  v31 = [dimClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteDimClientEvent];
  }

  nlxClientEvent = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  v34 = [nlxClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteNlxClientEvent];
  }

  orchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  v37 = [orchClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOrchClientEvent];
  }

  asrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  v40 = [asrClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteAsrClientEvent];
  }

  ihClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  v43 = [ihClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteIhClientEvent];
  }

  mhClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  v46 = [mhClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteMhClientEvent];
  }

  ttsClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  v49 = [ttsClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteTtsClientEvent];
  }

  clpClientEvent = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  v52 = [clpClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteClpClientEvent];
  }

  rrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  v55 = [rrClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRrClientEvent];
  }

  cnvClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  v58 = [cnvClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCnvClientEvent];
  }

  ancClientEvent = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  v61 = [ancClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteAncClientEvent];
  }

  halClientEvent = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  v64 = [halClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteHalClientEvent];
  }

  netClientEvent = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  v67 = [netClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteNetClientEvent];
  }

  sadClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  v70 = [sadClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSadClientEvent];
  }

  dodmlClientEvent = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  v73 = [dodmlClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteDodmlClientEvent];
  }

  plusClientEvent = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  v76 = [plusClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePlusClientEvent];
  }

  expSearchClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  v79 = [expSearchClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteExpSearchClientEvent];
  }

  expSiriClientEvent = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  v82 = [expSiriClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteExpSiriClientEvent];
  }

  srstClientEvent = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  v85 = [srstClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSrstClientEvent];
  }

  pommmesClientEvent = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  v88 = [pommmesClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePommmesClientEvent];
  }

  cdaClientEvent = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  v91 = [cdaClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCdaClientEvent];
  }

  mwtClientEvent = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  v94 = [mwtClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteMwtClientEvent];
  }

  homeClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  v97 = [homeClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteHomeClientEvent];
  }

  gradingOptInStateChange = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  v100 = [gradingOptInStateChange applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteGradingOptInStateChange];
  }

  optinStatePropagationEvent = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  v103 = [optinStatePropagationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOptinStatePropagationEvent];
  }

  rssClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  v106 = [rssClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRssClientEvent];
  }

  sugClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  v109 = [sugClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSugClientEvent];
  }

  flowLinkClientEvent = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  v112 = [flowLinkClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteFlowLinkClientEvent];
  }

  rfClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  v115 = [rfClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRfClientEvent];
  }

  sicClientEvent = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  v118 = [sicClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSicClientEvent];
  }

  inferenceClientEvent = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  v121 = [inferenceClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteInferenceClientEvent];
  }

  caarClientEvent = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  v124 = [caarClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCaarClientEvent];
  }

  rfgClientEvent = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  v127 = [rfgClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRfgClientEvent];
  }

  scClientEvent = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  v130 = [scClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteScClientEvent];
  }

  siriSetupClientEvent = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  v133 = [siriSetupClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage43 = [v133 suppressMessage];

  if (suppressMessage43)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSiriSetupClientEvent];
  }

  optInClientEvent = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  v136 = [optInClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage44 = [v136 suppressMessage];

  if (suppressMessage44)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOptInClientEvent];
  }

  lrClientEvent = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  v139 = [lrClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage45 = [v139 suppressMessage];

  if (suppressMessage45)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteLrClientEvent];
  }

  homeKitClientEvent = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
  v142 = [homeKitClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage46 = [v142 suppressMessage];

  if (suppressMessage46)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteHomeKitClientEvent];
  }

  v144 = v5;

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end