@interface GRPSchemaSiriEventTypeUnion
+ (Class)getEventTypeClassForTag:(int)a3;
+ (id)getTagForEventTypeClass:(Class)a3;
- (ANCSchemaANCClientEvent)ancClientEvent;
- (ASRSchemaASRClientEvent)asrClientEvent;
- (BOOL)isEqual:(id)a3;
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
- (GRPSchemaSiriEventTypeUnion)initWithDictionary:(id)a3;
- (GRPSchemaSiriEventTypeUnion)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAncClientEvent:(id)a3;
- (void)setAsrClientEvent:(id)a3;
- (void)setCaarClientEvent:(id)a3;
- (void)setCamClientEvent:(id)a3;
- (void)setCdaClientEvent:(id)a3;
- (void)setClpClientEvent:(id)a3;
- (void)setCnvClientEvent:(id)a3;
- (void)setDimClientEvent:(id)a3;
- (void)setDodmlClientEvent:(id)a3;
- (void)setEventType:(id)a3;
- (void)setExpSearchClientEvent:(id)a3;
- (void)setExpSiriClientEvent:(id)a3;
- (void)setFlowClientEvent:(id)a3;
- (void)setFlowLinkClientEvent:(id)a3;
- (void)setGradingOptInStateChange:(id)a3;
- (void)setHalClientEvent:(id)a3;
- (void)setHomeClientEvent:(id)a3;
- (void)setHomeKitClientEvent:(id)a3;
- (void)setIhClientEvent:(id)a3;
- (void)setInferenceClientEvent:(id)a3;
- (void)setLrClientEvent:(id)a3;
- (void)setMhClientEvent:(id)a3;
- (void)setMwtClientEvent:(id)a3;
- (void)setNetClientEvent:(id)a3;
- (void)setNlxClientEvent:(id)a3;
- (void)setOptInClientEvent:(id)a3;
- (void)setOptinStatePropagationEvent:(id)a3;
- (void)setOrchClientEvent:(id)a3;
- (void)setPetUploadEvent:(id)a3;
- (void)setPlusClientEvent:(id)a3;
- (void)setPommmesClientEvent:(id)a3;
- (void)setProvisionalEvent:(id)a3;
- (void)setRequestLinkEvent:(id)a3;
- (void)setRfClientEvent:(id)a3;
- (void)setRfgClientEvent:(id)a3;
- (void)setRrClientEvent:(id)a3;
- (void)setRssClientEvent:(id)a3;
- (void)setSadClientEvent:(id)a3;
- (void)setScClientEvent:(id)a3;
- (void)setSicClientEvent:(id)a3;
- (void)setSiriSetupClientEvent:(id)a3;
- (void)setSrstClientEvent:(id)a3;
- (void)setSugClientEvent:(id)a3;
- (void)setTestExecutionEvent:(id)a3;
- (void)setTtsClientEvent:(id)a3;
- (void)setUeiClientEvent:(id)a3;
- (void)setUspClientEvent:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)setEventType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GRPSchemaSiriEventTypeUnion *)self setUeiClientEvent:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(GRPSchemaSiriEventTypeUnion *)self setPetUploadEvent:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GRPSchemaSiriEventTypeUnion *)self setProvisionalEvent:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(GRPSchemaSiriEventTypeUnion *)self setTestExecutionEvent:v4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(GRPSchemaSiriEventTypeUnion *)self setRequestLinkEvent:v4];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(GRPSchemaSiriEventTypeUnion *)self setFlowClientEvent:v4];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(GRPSchemaSiriEventTypeUnion *)self setCamClientEvent:v4];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(GRPSchemaSiriEventTypeUnion *)self setUspClientEvent:v4];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(GRPSchemaSiriEventTypeUnion *)self setDimClientEvent:v4];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(GRPSchemaSiriEventTypeUnion *)self setNlxClientEvent:v4];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(GRPSchemaSiriEventTypeUnion *)self setOrchClientEvent:v4];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(GRPSchemaSiriEventTypeUnion *)self setAsrClientEvent:v4];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(GRPSchemaSiriEventTypeUnion *)self setIhClientEvent:v4];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [(GRPSchemaSiriEventTypeUnion *)self setMhClientEvent:v4];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(GRPSchemaSiriEventTypeUnion *)self setTtsClientEvent:v4];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [(GRPSchemaSiriEventTypeUnion *)self setClpClientEvent:v4];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [(GRPSchemaSiriEventTypeUnion *)self setRrClientEvent:v4];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [(GRPSchemaSiriEventTypeUnion *)self setCnvClientEvent:v4];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(GRPSchemaSiriEventTypeUnion *)self setAncClientEvent:v4];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [(GRPSchemaSiriEventTypeUnion *)self setHalClientEvent:v4];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [(GRPSchemaSiriEventTypeUnion *)self setNetClientEvent:v4];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [(GRPSchemaSiriEventTypeUnion *)self setSadClientEvent:v4];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [(GRPSchemaSiriEventTypeUnion *)self setDodmlClientEvent:v4];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [(GRPSchemaSiriEventTypeUnion *)self setPlusClientEvent:v4];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [(GRPSchemaSiriEventTypeUnion *)self setExpSearchClientEvent:v4];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [(GRPSchemaSiriEventTypeUnion *)self setExpSiriClientEvent:v4];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [(GRPSchemaSiriEventTypeUnion *)self setSrstClientEvent:v4];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [(GRPSchemaSiriEventTypeUnion *)self setPommmesClientEvent:v4];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [(GRPSchemaSiriEventTypeUnion *)self setCdaClientEvent:v4];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              [(GRPSchemaSiriEventTypeUnion *)self setMwtClientEvent:v4];
                                                            }

                                                            else
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                [(GRPSchemaSiriEventTypeUnion *)self setHomeClientEvent:v4];
                                                              }

                                                              else
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  [(GRPSchemaSiriEventTypeUnion *)self setGradingOptInStateChange:v4];
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    [(GRPSchemaSiriEventTypeUnion *)self setOptinStatePropagationEvent:v4];
                                                                  }

                                                                  else
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      [(GRPSchemaSiriEventTypeUnion *)self setRssClientEvent:v4];
                                                                    }

                                                                    else
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        [(GRPSchemaSiriEventTypeUnion *)self setSugClientEvent:v4];
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          [(GRPSchemaSiriEventTypeUnion *)self setFlowLinkClientEvent:v4];
                                                                        }

                                                                        else
                                                                        {
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            [(GRPSchemaSiriEventTypeUnion *)self setRfClientEvent:v4];
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              [(GRPSchemaSiriEventTypeUnion *)self setSicClientEvent:v4];
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                [(GRPSchemaSiriEventTypeUnion *)self setInferenceClientEvent:v4];
                                                                              }

                                                                              else
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  [(GRPSchemaSiriEventTypeUnion *)self setCaarClientEvent:v4];
                                                                                }

                                                                                else
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    [(GRPSchemaSiriEventTypeUnion *)self setRfgClientEvent:v4];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      [(GRPSchemaSiriEventTypeUnion *)self setScClientEvent:v4];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        [(GRPSchemaSiriEventTypeUnion *)self setSiriSetupClientEvent:v4];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          [(GRPSchemaSiriEventTypeUnion *)self setOptInClientEvent:v4];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            [(GRPSchemaSiriEventTypeUnion *)self setLrClientEvent:v4];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              [(GRPSchemaSiriEventTypeUnion *)self setHomeKitClientEvent:v4];
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

- (GRPSchemaSiriEventTypeUnion)initWithDictionary:(id)a3
{
  v4 = a3;
  v139.receiver = self;
  v139.super_class = GRPSchemaSiriEventTypeUnion;
  v5 = [(GRPSchemaSiriEventTypeUnion *)&v139 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ueiClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaClientEvent alloc] initWithDictionary:v6];
      [(GRPSchemaSiriEventTypeUnion *)v5 setUeiClientEvent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"petUploadEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PETSchemaPETUpload alloc] initWithDictionary:v8];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPetUploadEvent:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"provisionalEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaProvisionalEvent alloc] initWithDictionary:v10];
      [(GRPSchemaSiriEventTypeUnion *)v5 setProvisionalEvent:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"testExecutionEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUTSchemaTestExecutionEvent alloc] initWithDictionary:v12];
      [(GRPSchemaSiriEventTypeUnion *)v5 setTestExecutionEvent:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"requestLinkEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaRequestLink alloc] initWithDictionary:v14];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRequestLinkEvent:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"flowClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWClientEvent alloc] initWithDictionary:v16];
      [(GRPSchemaSiriEventTypeUnion *)v5 setFlowClientEvent:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"camClientEvent"];
    objc_opt_class();
    v138 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CAMSchemaCAMClientEvent alloc] initWithDictionary:v18];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCamClientEvent:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"uspClientEvent"];
    objc_opt_class();
    v137 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[USPSchemaUSPClientEvent alloc] initWithDictionary:v20];
      [(GRPSchemaSiriEventTypeUnion *)v5 setUspClientEvent:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"dimClientEvent"];
    objc_opt_class();
    v136 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[DIMSchemaDIMClientEvent alloc] initWithDictionary:v22];
      [(GRPSchemaSiriEventTypeUnion *)v5 setDimClientEvent:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"nlxClientEvent"];
    objc_opt_class();
    v135 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[NLXSchemaNLXClientEvent alloc] initWithDictionary:v24];
      [(GRPSchemaSiriEventTypeUnion *)v5 setNlxClientEvent:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"orchClientEvent"];
    objc_opt_class();
    v134 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ORCHSchemaORCHClientEvent alloc] initWithDictionary:v26];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOrchClientEvent:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"asrClientEvent"];
    objc_opt_class();
    v133 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ASRSchemaASRClientEvent alloc] initWithDictionary:v28];
      [(GRPSchemaSiriEventTypeUnion *)v5 setAsrClientEvent:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"ihClientEvent"];
    objc_opt_class();
    v132 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IHSchemaIHClientEvent alloc] initWithDictionary:v30];
      [(GRPSchemaSiriEventTypeUnion *)v5 setIhClientEvent:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"mhClientEvent"];
    objc_opt_class();
    v131 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[MHSchemaMHClientEvent alloc] initWithDictionary:v32];
      [(GRPSchemaSiriEventTypeUnion *)v5 setMhClientEvent:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"ttsClientEvent"];
    objc_opt_class();
    v130 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[TTSSchemaTTSClientEvent alloc] initWithDictionary:v34];
      [(GRPSchemaSiriEventTypeUnion *)v5 setTtsClientEvent:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"clpClientEvent"];
    objc_opt_class();
    v129 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[CLPInstSchemaCLPClientEvent alloc] initWithDictionary:v36];
      [(GRPSchemaSiriEventTypeUnion *)v5 setClpClientEvent:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"rrClientEvent"];
    objc_opt_class();
    v128 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[RRSchemaRRClientEvent alloc] initWithDictionary:v38];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRrClientEvent:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"cnvClientEvent"];
    objc_opt_class();
    v127 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[CNVSchemaCNVClientEvent alloc] initWithDictionary:v40];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCnvClientEvent:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"ancClientEvent"];
    objc_opt_class();
    v126 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ANCSchemaANCClientEvent alloc] initWithDictionary:v42];
      [(GRPSchemaSiriEventTypeUnion *)v5 setAncClientEvent:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"halClientEvent"];
    objc_opt_class();
    v125 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[HALSchemaHALClientEvent alloc] initWithDictionary:v44];
      [(GRPSchemaSiriEventTypeUnion *)v5 setHalClientEvent:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"netClientEvent"];
    objc_opt_class();
    v124 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[NETSchemaNETClientEvent alloc] initWithDictionary:v46];
      [(GRPSchemaSiriEventTypeUnion *)v5 setNetClientEvent:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"sadClientEvent"];
    objc_opt_class();
    v123 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[SADSchemaSADClientEvent alloc] initWithDictionary:v48];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSadClientEvent:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"dodmlClientEvent"];
    objc_opt_class();
    v122 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[DODMLSchemaDODMLClientEvent alloc] initWithDictionary:v50];
      [(GRPSchemaSiriEventTypeUnion *)v5 setDodmlClientEvent:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"plusClientEvent"];
    objc_opt_class();
    v121 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[PLUSSchemaPLUSClientEvent alloc] initWithDictionary:v52];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPlusClientEvent:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"expSearchClientEvent"];
    objc_opt_class();
    v120 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[EXPSearchSchemaEXPSearchClientEvent alloc] initWithDictionary:v54];
      [(GRPSchemaSiriEventTypeUnion *)v5 setExpSearchClientEvent:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"expSiriClientEvent"];
    objc_opt_class();
    v119 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[EXPSiriSchemaEXPSiriClientEvent alloc] initWithDictionary:v56];
      [(GRPSchemaSiriEventTypeUnion *)v5 setExpSiriClientEvent:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"srstClientEvent"];
    objc_opt_class();
    v118 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[SRSTSchemaSRSTClientEvent alloc] initWithDictionary:v58];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSrstClientEvent:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"pommmesClientEvent"];
    objc_opt_class();
    v117 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[POMMESSchemaPOMMESClientEvent alloc] initWithDictionary:v60];
      [(GRPSchemaSiriEventTypeUnion *)v5 setPommmesClientEvent:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"cdaClientEvent"];
    objc_opt_class();
    v116 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[CDASchemaCDAClientEvent alloc] initWithDictionary:v62];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCdaClientEvent:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"mwtClientEvent"];
    objc_opt_class();
    v115 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[MWTSchemaMWTClientEvent alloc] initWithDictionary:v64];
      [(GRPSchemaSiriEventTypeUnion *)v5 setMwtClientEvent:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"homeClientEvent"];
    objc_opt_class();
    v114 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[HOMESchemaHOMEClientEvent alloc] initWithDictionary:v66];
      [(GRPSchemaSiriEventTypeUnion *)v5 setHomeClientEvent:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"gradingOptInStateChange"];
    objc_opt_class();
    v113 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[SISchemaGradingOptInStateChange alloc] initWithDictionary:v68];
      [(GRPSchemaSiriEventTypeUnion *)v5 setGradingOptInStateChange:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"optinStatePropagationEvent"];
    objc_opt_class();
    v112 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[OPTINSchemaOPTINStatePropagationEvent alloc] initWithDictionary:v70];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOptinStatePropagationEvent:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"rssClientEvent"];
    objc_opt_class();
    v111 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[RSSSchemaRSSClientEvent alloc] initWithDictionary:v72];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRssClientEvent:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"sugClientEvent"];
    objc_opt_class();
    v110 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[SUGSchemaSUGClientEvent alloc] initWithDictionary:v74];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSugClientEvent:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"flowLinkClientEvent"];
    objc_opt_class();
    v109 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[FLOWLINKSchemaFLOWLINKClientEvent alloc] initWithDictionary:v76];
      [(GRPSchemaSiriEventTypeUnion *)v5 setFlowLinkClientEvent:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"rfClientEvent"];
    objc_opt_class();
    v108 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[RFSchemaRFClientEvent alloc] initWithDictionary:v78];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRfClientEvent:v79];
    }

    v80 = [v4 objectForKeyedSubscript:@"sicClientEvent"];
    objc_opt_class();
    v107 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[SICSchemaSICClientEvent alloc] initWithDictionary:v80];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSicClientEvent:v81];
    }

    v101 = v16;
    v82 = [v4 objectForKeyedSubscript:@"inferenceClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[INFERENCESchemaINFERENCEClientEvent alloc] initWithDictionary:v82];
      [(GRPSchemaSiriEventTypeUnion *)v5 setInferenceClientEvent:v83];
    }

    v106 = v6;
    v84 = [v4 objectForKeyedSubscript:{@"caarClientEvent", v82}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[CAARSchemaCAARClientEvent alloc] initWithDictionary:v84];
      [(GRPSchemaSiriEventTypeUnion *)v5 setCaarClientEvent:v85];
    }

    v105 = v8;
    v86 = [v4 objectForKeyedSubscript:@"rfgClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[RFGSchemaRFGClientEvent alloc] initWithDictionary:v86];
      [(GRPSchemaSiriEventTypeUnion *)v5 setRfgClientEvent:v87];
    }

    v104 = v10;
    v88 = [v4 objectForKeyedSubscript:@"scClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[SCSchemaSCClientEvent alloc] initWithDictionary:v88];
      [(GRPSchemaSiriEventTypeUnion *)v5 setScClientEvent:v89];
    }

    v103 = v12;
    v90 = [v4 objectForKeyedSubscript:@"siriSetupClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[SIRISETUPSchemaSIRISETUPClientEvent alloc] initWithDictionary:v90];
      [(GRPSchemaSiriEventTypeUnion *)v5 setSiriSetupClientEvent:v91];
    }

    v102 = v14;
    v92 = [v4 objectForKeyedSubscript:@"optInClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = [[OPTINSchemaOPTINClientEvent alloc] initWithDictionary:v92];
      [(GRPSchemaSiriEventTypeUnion *)v5 setOptInClientEvent:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"lrClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = [[LRSchemaLRClientEvent alloc] initWithDictionary:v94];
      [(GRPSchemaSiriEventTypeUnion *)v5 setLrClientEvent:v95];
    }

    v96 = [v4 objectForKeyedSubscript:@"homeKitClientEvent"];
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

- (GRPSchemaSiriEventTypeUnion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRPSchemaSiriEventTypeUnion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRPSchemaSiriEventTypeUnion *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_ancClientEvent)
  {
    v4 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ancClientEvent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ancClientEvent"];
    }
  }

  if (self->_asrClientEvent)
  {
    v7 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"asrClientEvent"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"asrClientEvent"];
    }
  }

  if (self->_caarClientEvent)
  {
    v10 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"caarClientEvent"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"caarClientEvent"];
    }
  }

  if (self->_camClientEvent)
  {
    v13 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"camClientEvent"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"camClientEvent"];
    }
  }

  if (self->_cdaClientEvent)
  {
    v16 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"cdaClientEvent"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"cdaClientEvent"];
    }
  }

  if (self->_clpClientEvent)
  {
    v19 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"clpClientEvent"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"clpClientEvent"];
    }
  }

  if (self->_cnvClientEvent)
  {
    v22 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"cnvClientEvent"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"cnvClientEvent"];
    }
  }

  if (self->_dimClientEvent)
  {
    v25 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"dimClientEvent"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"dimClientEvent"];
    }
  }

  if (self->_dodmlClientEvent)
  {
    v28 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"dodmlClientEvent"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"dodmlClientEvent"];
    }
  }

  if (self->_expSearchClientEvent)
  {
    v31 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"expSearchClientEvent"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"expSearchClientEvent"];
    }
  }

  if (self->_expSiriClientEvent)
  {
    v34 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"expSiriClientEvent"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"expSiriClientEvent"];
    }
  }

  if (self->_flowClientEvent)
  {
    v37 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"flowClientEvent"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"flowClientEvent"];
    }
  }

  if (self->_flowLinkClientEvent)
  {
    v40 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"flowLinkClientEvent"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"flowLinkClientEvent"];
    }
  }

  if (self->_gradingOptInStateChange)
  {
    v43 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"gradingOptInStateChange"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"gradingOptInStateChange"];
    }
  }

  if (self->_halClientEvent)
  {
    v46 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"halClientEvent"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"halClientEvent"];
    }
  }

  if (self->_homeClientEvent)
  {
    v49 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"homeClientEvent"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"homeClientEvent"];
    }
  }

  if (self->_homeKitClientEvent)
  {
    v52 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"homeKitClientEvent"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"homeKitClientEvent"];
    }
  }

  if (self->_ihClientEvent)
  {
    v55 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"ihClientEvent"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"ihClientEvent"];
    }
  }

  if (self->_inferenceClientEvent)
  {
    v58 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"inferenceClientEvent"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"inferenceClientEvent"];
    }
  }

  if (self->_lrClientEvent)
  {
    v61 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"lrClientEvent"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"lrClientEvent"];
    }
  }

  if (self->_mhClientEvent)
  {
    v64 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"mhClientEvent"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"mhClientEvent"];
    }
  }

  if (self->_mwtClientEvent)
  {
    v67 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"mwtClientEvent"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"mwtClientEvent"];
    }
  }

  if (self->_netClientEvent)
  {
    v70 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"netClientEvent"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"netClientEvent"];
    }
  }

  if (self->_nlxClientEvent)
  {
    v73 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"nlxClientEvent"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"nlxClientEvent"];
    }
  }

  if (self->_optInClientEvent)
  {
    v76 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"optInClientEvent"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"optInClientEvent"];
    }
  }

  if (self->_optinStatePropagationEvent)
  {
    v79 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"optinStatePropagationEvent"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"optinStatePropagationEvent"];
    }
  }

  if (self->_orchClientEvent)
  {
    v82 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"orchClientEvent"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"orchClientEvent"];
    }
  }

  if (self->_petUploadEvent)
  {
    v85 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"petUploadEvent"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"petUploadEvent"];
    }
  }

  if (self->_plusClientEvent)
  {
    v88 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"plusClientEvent"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"plusClientEvent"];
    }
  }

  if (self->_pommmesClientEvent)
  {
    v91 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"pommmesClientEvent"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"pommmesClientEvent"];
    }
  }

  if (self->_provisionalEvent)
  {
    v94 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"provisionalEvent"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"provisionalEvent"];
    }
  }

  if (self->_requestLinkEvent)
  {
    v97 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"requestLinkEvent"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"requestLinkEvent"];
    }
  }

  if (self->_rfClientEvent)
  {
    v100 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"rfClientEvent"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"rfClientEvent"];
    }
  }

  if (self->_rfgClientEvent)
  {
    v103 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"rfgClientEvent"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"rfgClientEvent"];
    }
  }

  if (self->_rrClientEvent)
  {
    v106 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"rrClientEvent"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"rrClientEvent"];
    }
  }

  if (self->_rssClientEvent)
  {
    v109 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"rssClientEvent"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"rssClientEvent"];
    }
  }

  if (self->_sadClientEvent)
  {
    v112 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"sadClientEvent"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"sadClientEvent"];
    }
  }

  if (self->_scClientEvent)
  {
    v115 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"scClientEvent"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"scClientEvent"];
    }
  }

  if (self->_sicClientEvent)
  {
    v118 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"sicClientEvent"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"sicClientEvent"];
    }
  }

  if (self->_siriSetupClientEvent)
  {
    v121 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"siriSetupClientEvent"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"siriSetupClientEvent"];
    }
  }

  if (self->_srstClientEvent)
  {
    v124 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"srstClientEvent"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"srstClientEvent"];
    }
  }

  if (self->_sugClientEvent)
  {
    v127 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"sugClientEvent"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"sugClientEvent"];
    }
  }

  if (self->_testExecutionEvent)
  {
    v130 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    v131 = [v130 dictionaryRepresentation];
    if (v131)
    {
      [v3 setObject:v131 forKeyedSubscript:@"testExecutionEvent"];
    }

    else
    {
      v132 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v132 forKeyedSubscript:@"testExecutionEvent"];
    }
  }

  if (self->_ttsClientEvent)
  {
    v133 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    v134 = [v133 dictionaryRepresentation];
    if (v134)
    {
      [v3 setObject:v134 forKeyedSubscript:@"ttsClientEvent"];
    }

    else
    {
      v135 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v135 forKeyedSubscript:@"ttsClientEvent"];
    }
  }

  if (self->_ueiClientEvent)
  {
    v136 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    v137 = [v136 dictionaryRepresentation];
    if (v137)
    {
      [v3 setObject:v137 forKeyedSubscript:@"ueiClientEvent"];
    }

    else
    {
      v138 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v138 forKeyedSubscript:@"ueiClientEvent"];
    }
  }

  if (self->_uspClientEvent)
  {
    v139 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    v140 = [v139 dictionaryRepresentation];
    if (v140)
    {
      [v3 setObject:v140 forKeyedSubscript:@"uspClientEvent"];
    }

    else
    {
      v141 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v141 forKeyedSubscript:@"uspClientEvent"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v142 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_233;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_233;
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  v7 = [v4 ueiClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v8 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  if (v8)
  {
    v9 = v8;
    v10 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    v11 = [v4 ueiClientEvent];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  v7 = [v4 petUploadEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v13 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  if (v13)
  {
    v14 = v13;
    v15 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    v16 = [v4 petUploadEvent];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  v7 = [v4 provisionalEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v18 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  if (v18)
  {
    v19 = v18;
    v20 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    v21 = [v4 provisionalEvent];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  v7 = [v4 testExecutionEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v23 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  if (v23)
  {
    v24 = v23;
    v25 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    v26 = [v4 testExecutionEvent];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  v7 = [v4 requestLinkEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v28 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  if (v28)
  {
    v29 = v28;
    v30 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    v31 = [v4 requestLinkEvent];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  v7 = [v4 flowClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v33 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  if (v33)
  {
    v34 = v33;
    v35 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    v36 = [v4 flowClientEvent];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  v7 = [v4 camClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v38 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  if (v38)
  {
    v39 = v38;
    v40 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    v41 = [v4 camClientEvent];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  v7 = [v4 uspClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v43 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  if (v43)
  {
    v44 = v43;
    v45 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    v46 = [v4 uspClientEvent];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  v7 = [v4 dimClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v48 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  if (v48)
  {
    v49 = v48;
    v50 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    v51 = [v4 dimClientEvent];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  v7 = [v4 nlxClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v53 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  if (v53)
  {
    v54 = v53;
    v55 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    v56 = [v4 nlxClientEvent];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  v7 = [v4 orchClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v58 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  if (v58)
  {
    v59 = v58;
    v60 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    v61 = [v4 orchClientEvent];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  v7 = [v4 asrClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v63 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  if (v63)
  {
    v64 = v63;
    v65 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    v66 = [v4 asrClientEvent];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  v7 = [v4 ihClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v68 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  if (v68)
  {
    v69 = v68;
    v70 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    v71 = [v4 ihClientEvent];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  v7 = [v4 mhClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v73 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  if (v73)
  {
    v74 = v73;
    v75 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    v76 = [v4 mhClientEvent];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  v7 = [v4 ttsClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v78 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  if (v78)
  {
    v79 = v78;
    v80 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    v81 = [v4 ttsClientEvent];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  v7 = [v4 clpClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v83 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  if (v83)
  {
    v84 = v83;
    v85 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    v86 = [v4 clpClientEvent];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  v7 = [v4 rrClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v88 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  if (v88)
  {
    v89 = v88;
    v90 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    v91 = [v4 rrClientEvent];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  v7 = [v4 cnvClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v93 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  if (v93)
  {
    v94 = v93;
    v95 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    v96 = [v4 cnvClientEvent];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  v7 = [v4 ancClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v98 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  if (v98)
  {
    v99 = v98;
    v100 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    v101 = [v4 ancClientEvent];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  v7 = [v4 halClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v103 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  if (v103)
  {
    v104 = v103;
    v105 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    v106 = [v4 halClientEvent];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  v7 = [v4 netClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v108 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  if (v108)
  {
    v109 = v108;
    v110 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    v111 = [v4 netClientEvent];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  v7 = [v4 sadClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v113 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  if (v113)
  {
    v114 = v113;
    v115 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    v116 = [v4 sadClientEvent];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  v7 = [v4 dodmlClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v118 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  if (v118)
  {
    v119 = v118;
    v120 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    v121 = [v4 dodmlClientEvent];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  v7 = [v4 plusClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v123 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  if (v123)
  {
    v124 = v123;
    v125 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    v126 = [v4 plusClientEvent];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  v7 = [v4 expSearchClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v128 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  if (v128)
  {
    v129 = v128;
    v130 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    v131 = [v4 expSearchClientEvent];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  v7 = [v4 expSiriClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v133 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  if (v133)
  {
    v134 = v133;
    v135 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    v136 = [v4 expSiriClientEvent];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  v7 = [v4 srstClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v138 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  if (v138)
  {
    v139 = v138;
    v140 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    v141 = [v4 srstClientEvent];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  v7 = [v4 pommmesClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v143 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  if (v143)
  {
    v144 = v143;
    v145 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    v146 = [v4 pommmesClientEvent];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  v7 = [v4 cdaClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v148 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  if (v148)
  {
    v149 = v148;
    v150 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    v151 = [v4 cdaClientEvent];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  v7 = [v4 mwtClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v153 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  if (v153)
  {
    v154 = v153;
    v155 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    v156 = [v4 mwtClientEvent];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  v7 = [v4 homeClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v158 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  if (v158)
  {
    v159 = v158;
    v160 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    v161 = [v4 homeClientEvent];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  v7 = [v4 gradingOptInStateChange];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v163 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  if (v163)
  {
    v164 = v163;
    v165 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    v166 = [v4 gradingOptInStateChange];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  v7 = [v4 optinStatePropagationEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v168 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  if (v168)
  {
    v169 = v168;
    v170 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    v171 = [v4 optinStatePropagationEvent];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  v7 = [v4 rssClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v173 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  if (v173)
  {
    v174 = v173;
    v175 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    v176 = [v4 rssClientEvent];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  v7 = [v4 sugClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v178 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  if (v178)
  {
    v179 = v178;
    v180 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    v181 = [v4 sugClientEvent];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  v7 = [v4 flowLinkClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v183 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  if (v183)
  {
    v184 = v183;
    v185 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    v186 = [v4 flowLinkClientEvent];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  v7 = [v4 rfClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v188 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  if (v188)
  {
    v189 = v188;
    v190 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    v191 = [v4 rfClientEvent];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  v7 = [v4 sicClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v193 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  if (v193)
  {
    v194 = v193;
    v195 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    v196 = [v4 sicClientEvent];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  v7 = [v4 inferenceClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v198 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  if (v198)
  {
    v199 = v198;
    v200 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    v201 = [v4 inferenceClientEvent];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  v7 = [v4 caarClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v203 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  if (v203)
  {
    v204 = v203;
    v205 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    v206 = [v4 caarClientEvent];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  v7 = [v4 rfgClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v208 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  if (v208)
  {
    v209 = v208;
    v210 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    v211 = [v4 rfgClientEvent];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  v7 = [v4 scClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v213 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  if (v213)
  {
    v214 = v213;
    v215 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    v216 = [v4 scClientEvent];
    v217 = [v215 isEqual:v216];

    if (!v217)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  v7 = [v4 siriSetupClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v218 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  if (v218)
  {
    v219 = v218;
    v220 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    v221 = [v4 siriSetupClientEvent];
    v222 = [v220 isEqual:v221];

    if (!v222)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  v7 = [v4 optInClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v223 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  if (v223)
  {
    v224 = v223;
    v225 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    v226 = [v4 optInClientEvent];
    v227 = [v225 isEqual:v226];

    if (!v227)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  v7 = [v4 lrClientEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_232;
  }

  v228 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  if (v228)
  {
    v229 = v228;
    v230 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    v231 = [v4 lrClientEvent];
    v232 = [v230 isEqual:v231];

    if (!v232)
    {
      goto LABEL_233;
    }
  }

  else
  {
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
  v7 = [v4 homeKitClientEvent];
  if ((v6 != 0) != (v7 == 0))
  {
    v233 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    if (!v233)
    {

LABEL_236:
      v238 = 1;
      goto LABEL_234;
    }

    v234 = v233;
    v235 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    v236 = [v4 homeKitClientEvent];
    v237 = [v235 isEqual:v236];

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

- (void)writeTo:(id)a3
{
  v97 = a3;
  v4 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];

  if (v4)
  {
    v5 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];

  if (v6)
  {
    v7 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];

  if (v8)
  {
    v9 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];

  if (v10)
  {
    v11 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];

  if (v12)
  {
    v13 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];

  if (v14)
  {
    v15 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];

  if (v16)
  {
    v17 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];

  if (v18)
  {
    v19 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];

  if (v20)
  {
    v21 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];

  if (v22)
  {
    v23 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];

  if (v24)
  {
    v25 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];

  if (v26)
  {
    v27 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];

  if (v28)
  {
    v29 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];

  if (v30)
  {
    v31 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];

  if (v32)
  {
    v33 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];

  if (v34)
  {
    v35 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];

  if (v36)
  {
    v37 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];

  if (v38)
  {
    v39 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];

  if (v40)
  {
    v41 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];

  if (v42)
  {
    v43 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];

  if (v44)
  {
    v45 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];

  if (v46)
  {
    v47 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];

  if (v48)
  {
    v49 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];

  if (v50)
  {
    v51 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];

  if (v52)
  {
    v53 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];

  if (v54)
  {
    v55 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];

  if (v56)
  {
    v57 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];

  if (v58)
  {
    v59 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];

  if (v60)
  {
    v61 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];

  if (v62)
  {
    v63 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];

  if (v64)
  {
    v65 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];

  if (v66)
  {
    v67 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];

  if (v68)
  {
    v69 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];

  if (v70)
  {
    v71 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];

  if (v72)
  {
    v73 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];

  if (v74)
  {
    v75 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];

  if (v76)
  {
    v77 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];

  if (v78)
  {
    v79 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];

  if (v80)
  {
    v81 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];

  if (v82)
  {
    v83 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];

  if (v84)
  {
    v85 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];

  if (v86)
  {
    v87 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v88 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];

  if (v88)
  {
    v89 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v90 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];

  if (v90)
  {
    v91 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v92 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];

  if (v92)
  {
    v93 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
    PBDataWriterWriteSubmessage();
  }

  v94 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];

  v95 = v97;
  if (v94)
  {
    v96 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
    PBDataWriterWriteSubmessage();

    v95 = v97;
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

- (void)setHomeKitClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  homeKitClientEvent = self->_homeKitClientEvent;
  self->_homeKitClientEvent = v4;
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

- (void)setLrClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  lrClientEvent = self->_lrClientEvent;
  self->_lrClientEvent = v4;
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

- (void)setOptInClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  optInClientEvent = self->_optInClientEvent;
  self->_optInClientEvent = v4;
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

- (void)setSiriSetupClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  siriSetupClientEvent = self->_siriSetupClientEvent;
  self->_siriSetupClientEvent = v4;
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

- (void)setScClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  scClientEvent = self->_scClientEvent;
  self->_scClientEvent = v4;
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

- (void)setRfgClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rfgClientEvent = self->_rfgClientEvent;
  self->_rfgClientEvent = v4;
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

- (void)setCaarClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  caarClientEvent = self->_caarClientEvent;
  self->_caarClientEvent = v4;
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

- (void)setInferenceClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  inferenceClientEvent = self->_inferenceClientEvent;
  self->_inferenceClientEvent = v4;
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

- (void)setSicClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sicClientEvent = self->_sicClientEvent;
  self->_sicClientEvent = v4;
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

- (void)setRfClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rfClientEvent = self->_rfClientEvent;
  self->_rfClientEvent = v4;
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

- (void)setFlowLinkClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  flowLinkClientEvent = self->_flowLinkClientEvent;
  self->_flowLinkClientEvent = v4;
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

- (void)setSugClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sugClientEvent = self->_sugClientEvent;
  self->_sugClientEvent = v4;
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

- (void)setRssClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rssClientEvent = self->_rssClientEvent;
  self->_rssClientEvent = v4;
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

- (void)setOptinStatePropagationEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  optinStatePropagationEvent = self->_optinStatePropagationEvent;
  self->_optinStatePropagationEvent = v4;
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

- (void)setGradingOptInStateChange:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 32 * (v4 != 0);
  gradingOptInStateChange = self->_gradingOptInStateChange;
  self->_gradingOptInStateChange = v4;
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

- (void)setHomeClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  homeClientEvent = self->_homeClientEvent;
  self->_homeClientEvent = v4;
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

- (void)setMwtClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  mwtClientEvent = self->_mwtClientEvent;
  self->_mwtClientEvent = v4;
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

- (void)setCdaClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  cdaClientEvent = self->_cdaClientEvent;
  self->_cdaClientEvent = v4;
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

- (void)setPommmesClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  pommmesClientEvent = self->_pommmesClientEvent;
  self->_pommmesClientEvent = v4;
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

- (void)setSrstClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  srstClientEvent = self->_srstClientEvent;
  self->_srstClientEvent = v4;
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

- (void)setExpSiriClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  expSiriClientEvent = self->_expSiriClientEvent;
  self->_expSiriClientEvent = v4;
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

- (void)setExpSearchClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  expSearchClientEvent = self->_expSearchClientEvent;
  self->_expSearchClientEvent = v4;
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

- (void)setPlusClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  plusClientEvent = self->_plusClientEvent;
  self->_plusClientEvent = v4;
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

- (void)setDodmlClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  dodmlClientEvent = self->_dodmlClientEvent;
  self->_dodmlClientEvent = v4;
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

- (void)setSadClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  sadClientEvent = self->_sadClientEvent;
  self->_sadClientEvent = v4;
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

- (void)setNetClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  netClientEvent = self->_netClientEvent;
  self->_netClientEvent = v4;
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

- (void)setHalClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  halClientEvent = self->_halClientEvent;
  self->_halClientEvent = v4;
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

- (void)setAncClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ancClientEvent = self->_ancClientEvent;
  self->_ancClientEvent = v4;
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

- (void)setCnvClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  cnvClientEvent = self->_cnvClientEvent;
  self->_cnvClientEvent = v4;
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

- (void)setRrClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  rrClientEvent = self->_rrClientEvent;
  self->_rrClientEvent = v4;
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

- (void)setClpClientEvent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 16 * (v4 != 0);
  clpClientEvent = self->_clpClientEvent;
  self->_clpClientEvent = v4;
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

- (void)setTtsClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ttsClientEvent = self->_ttsClientEvent;
  self->_ttsClientEvent = v4;
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

- (void)setMhClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  mhClientEvent = self->_mhClientEvent;
  self->_mhClientEvent = v4;
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

- (void)setIhClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  ihClientEvent = self->_ihClientEvent;
  self->_ihClientEvent = v4;
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

- (void)setAsrClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  asrClientEvent = self->_asrClientEvent;
  self->_asrClientEvent = v4;
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

- (void)setOrchClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  orchClientEvent = self->_orchClientEvent;
  self->_orchClientEvent = v4;
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

- (void)setNlxClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  nlxClientEvent = self->_nlxClientEvent;
  self->_nlxClientEvent = v4;
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

- (void)setDimClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  dimClientEvent = self->_dimClientEvent;
  self->_dimClientEvent = v4;
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

- (void)setUspClientEvent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 8 * (v4 != 0);
  uspClientEvent = self->_uspClientEvent;
  self->_uspClientEvent = v4;
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

- (void)setCamClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  camClientEvent = self->_camClientEvent;
  self->_camClientEvent = v4;
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

- (void)setFlowClientEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  flowClientEvent = self->_flowClientEvent;
  self->_flowClientEvent = v4;
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

- (void)setRequestLinkEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  requestLinkEvent = self->_requestLinkEvent;
  self->_requestLinkEvent = v4;
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

- (void)setTestExecutionEvent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 4 * (v4 != 0);
  testExecutionEvent = self->_testExecutionEvent;
  self->_testExecutionEvent = v4;
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

- (void)setProvisionalEvent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v50 = 0;
  }

  self->_whichEvent_Type = v50;
  provisionalEvent = self->_provisionalEvent;
  self->_provisionalEvent = v4;
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

- (void)setPetUploadEvent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 2 * (v4 != 0);
  petUploadEvent = self->_petUploadEvent;
  self->_petUploadEvent = v4;
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

- (void)setUeiClientEvent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = v4 != 0;
  ueiClientEvent = self->_ueiClientEvent;
  self->_ueiClientEvent = v4;
}

+ (id)getTagForEventTypeClass:(Class)a3
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFA0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFB8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFD0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F6FFE8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70000;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70018;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70030;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70048;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70060;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70078;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70090;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700A8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700C0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700D8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F700F0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70108;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70120;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70138;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70150;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70168;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70180;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70198;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701B0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701C8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701E0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F701F8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70210;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70228;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70240;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70258;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70270;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70288;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702A0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702B8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702D0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F702E8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70300;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70318;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70330;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70348;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70360;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70378;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70390;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703A8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703C0;
  }

  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    return &unk_1F1F703D8;
  }

  return 0;
}

+ (Class)getEventTypeClassForTag:(int)a3
{
  if ((a3 - 1) > 0x2D)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v146.receiver = self;
  v146.super_class = GRPSchemaSiriEventTypeUnion;
  v5 = [(SISchemaInstrumentationMessage *)&v146 applySensitiveConditionsPolicy:v4];
  v6 = [(GRPSchemaSiriEventTypeUnion *)self ueiClientEvent];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteUeiClientEvent];
  }

  v9 = [(GRPSchemaSiriEventTypeUnion *)self petUploadEvent];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePetUploadEvent];
  }

  v12 = [(GRPSchemaSiriEventTypeUnion *)self provisionalEvent];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteProvisionalEvent];
  }

  v15 = [(GRPSchemaSiriEventTypeUnion *)self testExecutionEvent];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteTestExecutionEvent];
  }

  v18 = [(GRPSchemaSiriEventTypeUnion *)self requestLinkEvent];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRequestLinkEvent];
  }

  v21 = [(GRPSchemaSiriEventTypeUnion *)self flowClientEvent];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteFlowClientEvent];
  }

  v24 = [(GRPSchemaSiriEventTypeUnion *)self camClientEvent];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCamClientEvent];
  }

  v27 = [(GRPSchemaSiriEventTypeUnion *)self uspClientEvent];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteUspClientEvent];
  }

  v30 = [(GRPSchemaSiriEventTypeUnion *)self dimClientEvent];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteDimClientEvent];
  }

  v33 = [(GRPSchemaSiriEventTypeUnion *)self nlxClientEvent];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteNlxClientEvent];
  }

  v36 = [(GRPSchemaSiriEventTypeUnion *)self orchClientEvent];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOrchClientEvent];
  }

  v39 = [(GRPSchemaSiriEventTypeUnion *)self asrClientEvent];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteAsrClientEvent];
  }

  v42 = [(GRPSchemaSiriEventTypeUnion *)self ihClientEvent];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteIhClientEvent];
  }

  v45 = [(GRPSchemaSiriEventTypeUnion *)self mhClientEvent];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteMhClientEvent];
  }

  v48 = [(GRPSchemaSiriEventTypeUnion *)self ttsClientEvent];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteTtsClientEvent];
  }

  v51 = [(GRPSchemaSiriEventTypeUnion *)self clpClientEvent];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteClpClientEvent];
  }

  v54 = [(GRPSchemaSiriEventTypeUnion *)self rrClientEvent];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRrClientEvent];
  }

  v57 = [(GRPSchemaSiriEventTypeUnion *)self cnvClientEvent];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCnvClientEvent];
  }

  v60 = [(GRPSchemaSiriEventTypeUnion *)self ancClientEvent];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteAncClientEvent];
  }

  v63 = [(GRPSchemaSiriEventTypeUnion *)self halClientEvent];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteHalClientEvent];
  }

  v66 = [(GRPSchemaSiriEventTypeUnion *)self netClientEvent];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteNetClientEvent];
  }

  v69 = [(GRPSchemaSiriEventTypeUnion *)self sadClientEvent];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSadClientEvent];
  }

  v72 = [(GRPSchemaSiriEventTypeUnion *)self dodmlClientEvent];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteDodmlClientEvent];
  }

  v75 = [(GRPSchemaSiriEventTypeUnion *)self plusClientEvent];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePlusClientEvent];
  }

  v78 = [(GRPSchemaSiriEventTypeUnion *)self expSearchClientEvent];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteExpSearchClientEvent];
  }

  v81 = [(GRPSchemaSiriEventTypeUnion *)self expSiriClientEvent];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteExpSiriClientEvent];
  }

  v84 = [(GRPSchemaSiriEventTypeUnion *)self srstClientEvent];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSrstClientEvent];
  }

  v87 = [(GRPSchemaSiriEventTypeUnion *)self pommmesClientEvent];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deletePommmesClientEvent];
  }

  v90 = [(GRPSchemaSiriEventTypeUnion *)self cdaClientEvent];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCdaClientEvent];
  }

  v93 = [(GRPSchemaSiriEventTypeUnion *)self mwtClientEvent];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteMwtClientEvent];
  }

  v96 = [(GRPSchemaSiriEventTypeUnion *)self homeClientEvent];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteHomeClientEvent];
  }

  v99 = [(GRPSchemaSiriEventTypeUnion *)self gradingOptInStateChange];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteGradingOptInStateChange];
  }

  v102 = [(GRPSchemaSiriEventTypeUnion *)self optinStatePropagationEvent];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOptinStatePropagationEvent];
  }

  v105 = [(GRPSchemaSiriEventTypeUnion *)self rssClientEvent];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRssClientEvent];
  }

  v108 = [(GRPSchemaSiriEventTypeUnion *)self sugClientEvent];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSugClientEvent];
  }

  v111 = [(GRPSchemaSiriEventTypeUnion *)self flowLinkClientEvent];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteFlowLinkClientEvent];
  }

  v114 = [(GRPSchemaSiriEventTypeUnion *)self rfClientEvent];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRfClientEvent];
  }

  v117 = [(GRPSchemaSiriEventTypeUnion *)self sicClientEvent];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSicClientEvent];
  }

  v120 = [(GRPSchemaSiriEventTypeUnion *)self inferenceClientEvent];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteInferenceClientEvent];
  }

  v123 = [(GRPSchemaSiriEventTypeUnion *)self caarClientEvent];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteCaarClientEvent];
  }

  v126 = [(GRPSchemaSiriEventTypeUnion *)self rfgClientEvent];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteRfgClientEvent];
  }

  v129 = [(GRPSchemaSiriEventTypeUnion *)self scClientEvent];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteScClientEvent];
  }

  v132 = [(GRPSchemaSiriEventTypeUnion *)self siriSetupClientEvent];
  v133 = [v132 applySensitiveConditionsPolicy:v4];
  v134 = [v133 suppressMessage];

  if (v134)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteSiriSetupClientEvent];
  }

  v135 = [(GRPSchemaSiriEventTypeUnion *)self optInClientEvent];
  v136 = [v135 applySensitiveConditionsPolicy:v4];
  v137 = [v136 suppressMessage];

  if (v137)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteOptInClientEvent];
  }

  v138 = [(GRPSchemaSiriEventTypeUnion *)self lrClientEvent];
  v139 = [v138 applySensitiveConditionsPolicy:v4];
  v140 = [v139 suppressMessage];

  if (v140)
  {
    [(GRPSchemaSiriEventTypeUnion *)self deleteLrClientEvent];
  }

  v141 = [(GRPSchemaSiriEventTypeUnion *)self homeKitClientEvent];
  v142 = [v141 applySensitiveConditionsPolicy:v4];
  v143 = [v142 suppressMessage];

  if (v143)
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